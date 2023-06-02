# Spectral Vendetta Game Design Document


## Summary Point List

Play as a vengeful ghost. Story Unknown. Possess weakened enemies and fight your way to your mark. Enemies are “Discarded” as you fight with them. Everything here is of course Conceptual, however things that stray or drift especially far will be in red italics. The Game will be a 2D Side-Scroll Action Hack n Slash. It will also feature Platforming, and light Puzzle Solving in the form of deciding which Utility to acquire and how to progress using that Utility.


### Gameplay Controls

* Movement
    * Left Right Up Down
    * Most Stages will be Move Right orientated.
    * Snappiness, Speed, and Feel will vary on Possessed Enemy
        * Default will be floaty, and kind of lame
* Jump
    * If Current Possession allows
    * Default Ghost form increases distance off the ground to limited extent
* Base Attack
    * 3 - 4 Directional Attack inputs
    * Varies on Possessed Enemy
        * Default will be small, wind gust
            * Break Doors and Jars
            * Minor damage to enemies.
* Special Attack
    * 3 - 4 Directional Attack inputs
    * Varies on Possessed Enemy
        * Default will be a short-range tethering drain.
            * Channeling
            * Slows enemies
            * Does minor damage
* Utility Skill
    * A Utility skill that enables a certain type of platforming puzzle to be solved.
        * Fish person can go through water
        * Bird Person can fly to roof
        * Wolf Person can cut down bramble
* Possession Button
    * Default Ghost will be able to Possess the nearest weakened Enemy
        * Usable if already possessing something.
* Shield Block / Dodge / Backstep
    * Unavailable on Default Ghost


### Gameplay Hook Points

* Too Weak
    * You as the Default Ghost are too weak. You do not NEED to possess enemies, but you WANT to. 
* Decaying Possession
    * Your current possession is falling apart. You need to act FAST. Taking Damage will shorten your possession, so you need to be SMART, AGILE, and TACTILE.
    * Your Possession WILL FALL APART, so you need to be damaging other enemies as preparation.
* Choosing the right Possession
    * Some Possessions will allow you to overcome a challenge easier than others. Those challenges could be elements of the world, the platforms, the other enemies, or even upcoming boss fights.
    * Players should be able to return to areas to change their mind on a Possession if desired, however this has concerns.
        * Backtracking isn’t always fun, so it needs to be kept small and limited.
        * Stages need to be replayable, to invite the player to use knowledge from their previous playthroughs to choose different, perhaps optimal, possessions.
            * Example. Sonic the Hedghog, Replaying a stage to get the “High Road”
        * Consider Rewarding Player who chooses harder path
            * Reward could be uncommon or rare enemy to Possess
* Satisfying Combat
    * Rapid execution of skilled maneuvers WILL FEEL GOOD.
    * Uninterrupted Combos will reward more Soul Power
        * Combos will transfer over when possessing a new enemy, enabling the player to bounce around.
* Gathering more Soul Power to unlock boons
    * Rogue Lite Style repeatable content?
    * Unlock Shop?
* Revealing more of the Story
    * Story Points can be revealed by short glimpses of the Ghosts Memory. Flashbacks.
    * Reaching different points in the map can reveal different flashbacks, adding replayability


### Visual Design

Subject to change, however most likely 2D. The Style is the most dynamic and undecided element. Style choice could have the largest impact on production timeline.

* 2D
    * Canvas
    * Horizon Background Elements
        * Parallax
    * Large Background Elements
        * Example: Interior back wall
    * Playable Center Midlayer
        * Where the game takes place
        * Platforms, Enemy, Interactables, and Player will be located here.
    * Massive Foreground Elements
        * Very Few
        * Used for Scene Transition
        * Most likely Flora
* Japanese WaterColor with Thick Ink Lining
* Canvas / Scroll / Tapestry Background
    * Minimal Supporting Details
    * Mostly the Horizon line of terrains
        * Faint outlines of Mountain Ridges if near a mountain
        * Treetops and hill rounds if in a Plains
        * Vertical Tree Lines while in deep forest
* Simple Shape platforms
    * Highly readable
    * Decorated with few Foreground level details
* Massive Foreground Elements
    * Mostly located on the edges and frames of Map Area
        * So the Left Corner might have a large Fern that is faded out when the player is behind it, but fades into view as the player moves right out of it.
* Slashes and Hit FX will be bright and readable
    * Glow
* Possessed Enemies will look different
    * Probably just an aura or particles raise up


### Audio Design

* Currently Unknown
* Most likely faster paced
* To fit the visuals, probably Classic Japan inspired
    * Taiko Drums


### Target Platform

* PC, Mac, Linux
    * Most likely downloaded, Web-Play probably won’t work
        * Too many Visuals
    * Mid or Low Graphics Support
        * Essentially just needs to render 4 layers of images.
        * Minimal use of shaders
            * Unless instead use 3D models with custom shader to supply target visual style
* Controller Oriented
    * Consoles could be cool?
        * Switch, Xbox, Playstation
            * I don’t have any Developer Consoles…
* Keyboard Supported


## Gameplay Breakdowns

There are many elements to the Gameplay, and this section aims to address each of them. My Goals are to Describe the impact, purpose, and function of each element. I’ll start with an overarching base list, very generic, then dissect each part further.


### Core Elements

* Player
    * The primary source of Player to Game interaction
* Terrain and Platforms
    * The base of defined reality for the Player.
    * Shows that Gravity exists.
    * Enables settings for story-telling
* Obstacles
    * Mostly Static
    * Simple Puzzle Problem Scenario
    * Enables decision making for which enemy to Possess to surpass X Obstacle.
* Enemies
    * Mostly Static
        * Capable of movement
        * Incapable of Dynamic Change
            * Human Can Swing Fists
            * Human Can transform into Werewolf if designed to.
            * Human Cannot transform into Wizard
            * Human Cannot cut down a tree, and build a fort.
        * Werewolf in Room A is the same visually and statistically as Werewolf in Room B
    * Mostly Unique problem scenario
    * Due to Possession Mechanic, they are the core utility for solving almost all other problem scenarios.
* Possession
    * The Key Hook mechanic of Spectral Vendetta
    * Without it this is just a Vania-clone


### Player

The Player has a default Ghost form, and also a form of whatever Enemy they Possess. For the sake of readability and structure, I will only dissect the Ghost Form interaction here.

* Nameless
* Identifiable by Color Scheme and Visual Effects
    * Dark shades of Purple
    * Wisps float and drift off
* Doesn’t have health
    * This form is meant to feel helpless and lame in a sense, so being cast back to this form replaces the “continue” or “try again” screen.
    * Adding Health to the Ghost would provide needless UI Elements.
    * Effectively acts as a “You Died” without the baggage
        * No need for Checkpoint or Life system
* Can be stopped by unique obstacle problems.
    * Reinforces the need to possess
* Always floating slightly
    * Cannot fly infinitely upwards
    * Can hold Jump to raise distance off the ground.
    * Provides ability to reach enemies to possess
* Attack Actions
    * Needed to weaken enemies for possession
        * Only allowing the Player to possess weakened enemies maintains a theme and rule pillar
    * Deal very little damage, most likely percent based
        * Slows down the Players flow and rhythm, reinforcing them to keep the loop of Run, Attack, Weaken, Possess
        * Must be miniscule enough just to break rhythm, not to become unbearable.
    * Cannot be used to kill Special Enemies like Boss Encounters
        * Reinforcing the Possess Mechanic
    * Ranged Wisp Projectile
        * To Weaken Enemies across a gap or out of reach
        * Can be spammed with button press
            * Good Stress relief
            * Possibly provides minor satisfaction to players who just broke rhythm
            * Provides pillar of consistency
            * “Well I suck at controlling the werewolf, and I hate fighting the skeleton, but at least I can just spam him down with little wisps.”
    * Channeling Drain
        * Weaken Enemy nearest to player, while also slowing them down
            * Just hold to use
            * Good for People who don’t know what is going on.
            * Slows down movement and animation of Target Enemy, while also drawing a line from that enemy to the Player.
                * Should provide good visual agency for Player and Possession.
* Possess Action
    * Allows the player to possess a weakened enemy
    * Can be used while possessing an enemy already
    * Keeps the player in rhythm, and out of the Ghost Form


### Terrain and Platforms

The Main Stage for the gameplay interactions to take place. Terrain can provide both Problems and Solutions, so ignoring it or treating it flat would be a mistake.

* Differing Heights
    * Hills
    * Holes
    * Ramps
    * Cliffs
    * Can provide tactical decision making for Problems and Decisions
        * “I’ll possess the archer, then stand atop this cliff and fire down at those enemies.”
        * “I’ll possess the angel so I can fly up out of this ravine.”
        * “I don’t want to fall into that pit of goblins, so I better land this jump right.”
* Differing Types
    * Mud for slow movement
    * Water?
* Floating Platforms
    * Provides more vertical interaction
    * Is Very Video Game
    * Can provide relief from enemy presence


### Obstacles

Obstacles are a vague description. They can be certain enemies, or static elements of the map or terrain. Specific Obstacles are currently not decided on, I only have vague ideas. Their impact and purpose though are to Reinforce the player possessing an enemy who has the utility to overcome an obstacle. This can also provide setup for intriguing challenges. Let’s say the Player has to possess a weaker bird enemy to reach the tree tops, but when traveling through the tree tops begins to encounter enemies that summon lightning. It would provide challenge of “Yes you are here using that enemy, but how will you proceed further?”


### Enemies

Enemies are currently Undecided. I know that everything they can do, the player should also be able to do when possessing them. They will have small healthbars floating over them, and simple ai to chase down and attack the player. I don’t think I need to explain their impact on the game. They are both the problems and solutions for the player thanks to the Possession mechanic.


### Possession

This is the Hook. What makes it hopefully unique. I can foresee people describing the game as “Castlevania except you possess the monsters”. Almost Every problem should have a solution somehow tied to possession. It’s hard to describe functions without being certain on the Enemies which can be possessed yet. 

It enables a “Discard and Pickup” scheme of gameplay, where the player is constantly switching up play styles to fit their current possession, ultimately throwing it away to move onto the next possession, then activating that play style. This layer of gameplay is happening simultaneously to the decision making and problem solving that the Terrain, Obstacles, and other Enemies provide. Hopefully, it has good chemistry.

A Play by Play. The player runs into the room as a wolf, weakens the archer to possess and then fire at a explosive barrel on top of the building. Blowing up the roof rains debris, weakening the other goblins running towards them. They possess one of the goblins wielding climbing tools, and climb the structure to the newly formed entry at the roof and are onto the next room.