/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 1D3D0717
event_inherited();

/// @DnDAction : YoYo Games.Common.Execute_Script
/// @DnDVersion : 1.1
/// @DnDHash : 2B2A17C5
/// @DnDArgument : "script" "scr_depth"
/// @DnDSaveInfo : "script" "scr_depth"
script_execute(scr_depth);

/// @DnDAction : YoYo Games.Sequences.If_Sequence_Exists
/// @DnDVersion : 1
/// @DnDHash : 440A917D
/// @DnDArgument : "obj" "seq_brown_dog_fight_start"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "seq_brown_dog_fight_start"
var l440A917D_0 = false;
l440A917D_0 = sequence_instance_exists(seq_brown_dog_fight_start);
if(!l440A917D_0)
{
	/// @DnDAction : YoYo Games.Collisions.If_Object_At
	/// @DnDVersion : 1.1
	/// @DnDHash : 48E8AE02
	/// @DnDParent : 440A917D
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "object" "obj_dog"
	/// @DnDArgument : "destroylist" "false"
	/// @DnDSaveInfo : "object" "obj_dog"
	var l48E8AE02_0 = instance_place(x + 0, y + 0, [obj_dog]);
	if ((l48E8AE02_0 > 0))
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 259841E4
		/// @DnDParent : 48E8AE02
		/// @DnDArgument : "alpha" "0"
		image_alpha = 0;
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7F00962D
		/// @DnDApplyTo : {obj_dog}
		/// @DnDParent : 48E8AE02
		with(obj_dog) instance_destroy();
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3F7D6391
		/// @DnDParent : 48E8AE02
		/// @DnDArgument : "var" "_half_view_width"
		/// @DnDArgument : "value" "camera_get_view_width(view_camera[0]) / 2"
		var _half_view_width = camera_get_view_width(view_camera[0]) / 2;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3E09FE0B
		/// @DnDParent : 48E8AE02
		/// @DnDArgument : "var" "_half_view_height"
		/// @DnDArgument : "value" "camera_get_view_height(view_camera[0]) / 2"
		var _half_view_height = camera_get_view_height(view_camera[0]) / 2;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 39AB7C2B
		/// @DnDParent : 48E8AE02
		/// @DnDArgument : "var" "_cx_set"
		/// @DnDArgument : "value" "x - _half_view_width"
		var _cx_set = x - _half_view_width;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 798B84FD
		/// @DnDParent : 48E8AE02
		/// @DnDArgument : "var" "_cy_set"
		/// @DnDArgument : "value" "y - _half_view_height"
		var _cy_set = y - _half_view_height;
	
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 5F7631CE
		/// @DnDParent : 48E8AE02
		/// @DnDArgument : "code" "camera_set_view_pos(view_camera[0], _cx_set, _cy_set)"
		camera_set_view_pos(view_camera[0], _cx_set, _cy_set)
	
		/// @DnDAction : YoYo Games.Sequences.Sequence_Create
		/// @DnDVersion : 1
		/// @DnDHash : 3F239595
		/// @DnDParent : 48E8AE02
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "var" "_fight_init_seq"
		/// @DnDArgument : "sequenceid" "seq_brown_dog_fight_start"
		/// @DnDSaveInfo : "sequenceid" "seq_brown_dog_fight_start"
		_fight_init_seq = layer_sequence_create("Assets", x + 0, y + 0, seq_brown_dog_fight_start);
	}
}

/// @DnDAction : YoYo Games.Sequences.If_Sequence_Exists
/// @DnDVersion : 1
/// @DnDHash : 36A3A170
/// @DnDArgument : "obj" "seq_brown_dog_fight_start"
/// @DnDSaveInfo : "obj" "seq_brown_dog_fight_start"
var l36A3A170_0 = false;
l36A3A170_0 = sequence_instance_exists(seq_brown_dog_fight_start);
if(l36A3A170_0)
{
	/// @DnDAction : YoYo Games.Common.Function
	/// @DnDVersion : 1
	/// @DnDHash : 4B975A22
	/// @DnDParent : 36A3A170
	/// @DnDArgument : "funcName" "move_room"
	/// @DnDArgument : "temp" "1"
	var move_room = function() 
	{
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 7AAF9A8B
		/// @DnDParent : 4B975A22
		/// @DnDArgument : "room" "rom_brown_dog_battle"
		/// @DnDSaveInfo : "room" "rom_brown_dog_battle"
		room_goto(rom_brown_dog_battle);
	}

	/// @DnDAction : YoYo Games.Time.Time_Source_Create
	/// @DnDVersion : 1
	/// @DnDHash : 4F0B3B15
	/// @DnDParent : 36A3A170
	/// @DnDArgument : "idx" "_wait_seq"
	/// @DnDArgument : "parent" "time_source_game"
	/// @DnDArgument : "period" "60"
	/// @DnDArgument : "units" "time_source_units_frames"
	/// @DnDArgument : "callback" "move_room"
	_wait_seq = time_source_create(time_source_game, 60, time_source_units_frames, move_room, [], 1, time_source_expire_after);
}