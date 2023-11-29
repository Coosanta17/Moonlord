/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 78E5254E
/// @DnDArgument : "var" "_exit"
/// @DnDArgument : "value" "keyboard_check(ord("Z"))"
var _exit = keyboard_check(ord("Z"));

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 572233E8
/// @DnDArgument : "var" "_exit"
/// @DnDArgument : "not" "1"
if(!(_exit == 0))
{
	/// @DnDAction : YoYo Games.Game.Restart_Game
	/// @DnDVersion : 1
	/// @DnDHash : 22817388
	/// @DnDParent : 572233E8
	game_restart();
}