/// @DnDAction : YoYo Games.Common.Macro
/// @DnDVersion : 1
/// @DnDHash : 7F931C14
/// @DnDArgument : "macro" "FRAME_RATE"
/// @DnDArgument : "value" "60"
#macro FRAME_RATE 60

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1CC06473
/// @DnDArgument : "code" "enum ENEMYSTATE$(13_10){$(13_10)	IDLE,$(13_10)	WANDER,$(13_10)	CHASE,$(13_10)	ATTACK,$(13_10)	HURT,$(13_10)	DIE,$(13_10)	WAIT$(13_10)}$(13_10)"
enum ENEMYSTATE
{
	IDLE,
	WANDER,
	CHASE,
	ATTACK,
	HURT,
	DIE,
	WAIT
}