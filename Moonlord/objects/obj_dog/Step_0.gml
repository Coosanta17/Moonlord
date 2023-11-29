/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 6BE1BED6
/// @DnDArgument : "script" "scr_depth"
/// @DnDSaveInfo : "script" "scr_depth"
script_execute(scr_depth);

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 00E4D07F
/// @DnDInput : 4
/// @DnDArgument : "var" "_right"
/// @DnDArgument : "value" "keyboard_check(vk_right) or keyboard_check(ord("D"))"
/// @DnDArgument : "var_1" "_left"
/// @DnDArgument : "value_1" "keyboard_check(vk_left) or keyboard_check(ord("A"))"
/// @DnDArgument : "var_2" "_up"
/// @DnDArgument : "value_2" "keyboard_check(vk_up) or keyboard_check(ord("W"))"
/// @DnDArgument : "var_3" "_down"
/// @DnDArgument : "value_3" "keyboard_check(vk_down) or keyboard_check(ord("S"))"
var _right = keyboard_check(vk_right) or keyboard_check(ord("D"));
var _left = keyboard_check(vk_left) or keyboard_check(ord("A"));
var _up = keyboard_check(vk_up) or keyboard_check(ord("W"));
var _down = keyboard_check(vk_down) or keyboard_check(ord("S"));

/// @DnDAction : YoYo Games.Common.Temp_Variable
/// @DnDVersion : 1
/// @DnDHash : 62932066
/// @DnDInput : 2
/// @DnDArgument : "var" "_xinput"
/// @DnDArgument : "value" "_right - _left"
/// @DnDArgument : "var_1" "_yinput"
/// @DnDArgument : "value_1" "_down - _up"
var _xinput = _right - _left;
var _yinput = _down - _up;

/// @DnDAction : YoYo Games.Movement.move_and_collide
/// @DnDVersion : 1
/// @DnDHash : 20EA8848
/// @DnDArgument : "object" "obj_barrier_invis"
/// @DnDArgument : "xvel" "_xinput * my_speed"
/// @DnDArgument : "yvel" "_yinput * my_speed"
/// @DnDArgument : "num_iterations" "4"
/// @DnDArgument : "maxxmove" "my_speed"
/// @DnDArgument : "maxymove" "my_speed"
/// @DnDSaveInfo : "object" "obj_barrier_invis"
move_and_collide(_xinput * my_speed, _yinput * my_speed, obj_barrier_invis,4,0,0,my_speed,my_speed);

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 21CAD010
/// @DnDArgument : "expr" "_xinput != 0 || _yinput != 0"
if(_xinput != 0 || _yinput != 0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 7D8B1A08
	/// @DnDParent : 21CAD010
	/// @DnDArgument : "imageind_relative" "1"
	/// @DnDArgument : "spriteind" "spr_dog_run"
	/// @DnDSaveInfo : "spriteind" "spr_dog_run"
	sprite_index = spr_dog_run;
	image_index += 0;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7590C320
	/// @DnDParent : 21CAD010
	/// @DnDArgument : "var" "_xinput"
	/// @DnDArgument : "not" "1"
	if(!(_xinput == 0))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0F9B938B
		/// @DnDParent : 7590C320
		/// @DnDArgument : "expr" "(sign(_xinput))/3"
		/// @DnDArgument : "var" "image_xscale"
		image_xscale = (sign(_xinput))/3;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 07387576
else
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 42AC3EC2
	/// @DnDParent : 07387576
	/// @DnDArgument : "spriteind" "spr_dog_still"
	/// @DnDSaveInfo : "spriteind" "spr_dog_still"
	sprite_index = spr_dog_still;
	image_index = 0;
}