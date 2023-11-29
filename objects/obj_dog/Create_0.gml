/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 73DEC97D
/// @DnDArgument : "var" "min_view_x"
min_view_x = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 3ACF76AA
/// @DnDArgument : "var" "min_view_y"
min_view_y = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 14A7F234
/// @DnDArgument : "expr" "room_width - camera_get_view_width(view_camera[0])"
/// @DnDArgument : "var" "max_view_x"
max_view_x = room_width - camera_get_view_width(view_camera[0]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4437F8C6
/// @DnDArgument : "expr" "room_height - camera_get_view_height(view_camera[0])"
/// @DnDArgument : "var" "max_view_y"
max_view_y = room_height - camera_get_view_height(view_camera[0]);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0F46CB82
/// @DnDArgument : "expr" "1.25"
/// @DnDArgument : "var" "my_speed"
my_speed = 1.25;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6EC6FCCB
/// @DnDArgument : "var" "xinput"
xinput = 0;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 398ABBFB
/// @DnDArgument : "var" "yinput"
yinput = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3CB7DA30
/// @DnDArgument : "xscale" "1/3"
/// @DnDArgument : "yscale" "1/3"
image_xscale = 1/3;
image_yscale = 1/3;