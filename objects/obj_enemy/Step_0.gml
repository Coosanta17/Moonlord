/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 5AB6AD90
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "!global.gamePaused"
/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 395B4168
/// @DnDParent : 5AB6AD90
/// @DnDArgument : "expr" "enemyScript[state] != -1"
if(enemyScript[state] != -1)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2A3F8CFF
	/// @DnDInput : 4
	/// @DnDParent : 395B4168
	/// @DnDArgument : "function" "enemyScript[state]"
	/// @DnDArgument : "arg" "x"
	/// @DnDArgument : "arg_1" "y"
	/// @DnDArgument : "arg_2" "x_orbit"
	/// @DnDArgument : "arg_3" "y_orbit"
	enemyScript[state](x, y, x_orbit, y_orbit);
}

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 479F9028
/// @DnDParent : 5AB6AD90
/// @DnDArgument : "expr" "-bbox_bottom"
/// @DnDArgument : "var" "depth"
depth = -bbox_bottom;