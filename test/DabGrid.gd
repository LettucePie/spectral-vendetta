extends Node2D

@export var wobble_speed := 0.5
@export var x_reso := 100
@export var y_reso := 80
@export var dab_scale := 0.2
@export var dab_textures : Array[Texture2D]

var dabs : Array
var dab_coords : PackedVector2Array
var color_points : Array
var active := false

# Called when the node enters the scene tree for the first time.
func _ready():
	_build_grid()
	_gather_color_points()


func _build_grid() -> void:
	if dabs.size() > 0:
		for d in dabs:
			if is_instance_valid(d):
				d.queue_free()
	dabs.clear()
	dab_coords.clear()
	var start_pos = $Start.position
	var end_pos = $End.position
	var x_step = (end_pos.x - start_pos.x) / x_reso
	var y_step = (end_pos.y - start_pos.y) / y_reso
	var march_point = start_pos
	randomize()
	for y in y_reso + 1:
		for x in x_reso + 1:
			var new_dab = Sprite2D.new()
			new_dab.texture = dab_textures.pick_random()
			new_dab.position = march_point
			new_dab.rotation = PI * randf()
			new_dab.apply_scale(Vector2(dab_scale, dab_scale))
			new_dab.modulate = Color(1.0, 1.0, 1.0, 0.0)
			dabs.append(new_dab)
			add_child(new_dab)
			dab_coords.append(march_point)
			march_point.x += x_step
		march_point.x = start_pos.x
		march_point.y += y_step


func _gather_color_points() -> void:
	color_points = get_tree().get_nodes_in_group("ColorPoint")
	if color_points.size() > 0:
		active = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if active:
		_fade_dabs(delta)
		for c in color_points:
			var indices = []
			if c.aabb:
				indices = _collect_area_dab_indices(c.global_position, c.dimensions)
			else:
				indices = _collect_nearest_dab_indices(c.global_position, c.size)
			if indices.size() > 0:
				_color_dabs(indices, c.color, c.weight)
		if get_parent() is PathFollow2D:
			get_parent().progress_ratio += delta * wobble_speed


func _fade_dabs(weight : float) -> void:
	for d in dabs:
		d.modulate.a = lerp(d.modulate.a, 0.0, weight)


func _collect_area_dab_indices(center : Vector2, dimension : Vector2) -> Array:
	var result = []
	var top_left = center - dimension
	var bottom_right = center + dimension
	for i in dab_coords.size() -1:
		var coord = dab_coords[i]
		if coord.x >= top_left.x and coord.x <= bottom_right.x:
			if coord.y >= top_left.y and coord.y <= bottom_right.y:
				result.append(i)
	return result


func _collect_nearest_dab_indices(pos : Vector2, size : float) -> Array:
	var result = []
	for i in dab_coords.size() - 1:
		if dab_coords[i].distance_squared_to(pos) <= size:
			result.append(i)
	return result


func _color_dabs(indices : Array, color : Color, weight : float) -> void:
	for i in indices:
		dabs[i].modulate = dabs[i].modulate.lerp(color, weight)
