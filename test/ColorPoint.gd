extends Marker2D

@export var color : Color
@export var weight := 0.5
@export var aabb := false
@export var size := 10.0
@export var dimensions := Vector2(1, 1)

@export var wobble := false
@export var wobble_distance := 1.0
@export var wobble_speed := 0.5

@onready var starting_position = get_position()
@onready var target_position = get_position()


func _process(delta):
	if wobble:
		if starting_position != target_position:
			position = position.move_toward(target_position, delta * wobble_speed)
		else:
			randomize()
			target_position = Vector2(
				randf_range(-wobble_distance, wobble_distance),
				randf_range(-wobble_distance, wobble_distance)
				)
