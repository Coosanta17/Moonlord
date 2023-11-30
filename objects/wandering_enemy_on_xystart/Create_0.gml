/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 317F8459
event_inherited();

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 5637435C
/// @DnDArgument : "xscale" "0.5"
/// @DnDArgument : "yscale" "0.5"
image_xscale = 0.5;
image_yscale = 0.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 5FE627AF
/// @DnDArgument : "expr" "ENEMYSTATE.WANDER"
/// @DnDArgument : "var" "state"
state = ENEMYSTATE.WANDER;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 34341B30
/// @DnDArgument : "expr" "spr_brown_dog_walk"
/// @DnDArgument : "var" "sprMove"
sprMove = spr_brown_dog_walk;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0DB4C5F9
/// @DnDArgument : "expr" "tmp_brownDogWander"
/// @DnDArgument : "var" "enemyScript[ENEMYSTATE.WANDER]"
enemyScript[ENEMYSTATE.WANDER] = tmp_brownDogWander;