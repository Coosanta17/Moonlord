/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 72E58EC5
/// @DnDArgument : "code" "//Moves the view!!$(13_10)//Credit to https://www.youtube.com/watch?v=V8EQFq7GZgo&t$(13_10)$(13_10)#region Move the VIEW! clamped!!$(13_10)$(13_10)var _half_view_width = camera_get_view_width(view_camera[0]) / 2;$(13_10)var _half_view_height = camera_get_view_height(view_camera[0]) / 2;$(13_10)var _cx = x - _half_view_width;$(13_10)var _cy = y - _half_view_height;$(13_10)$(13_10)var _cx = clamp(_cx, min_view_x, max_view_x);$(13_10)var _cy = clamp(_cy, min_view_y, max_view_y);$(13_10)$(13_10)camera_set_view_pos(view_camera[0], _cx, _cy);$(13_10)$(13_10)#endregion"
//Moves the view!!
//Credit to https://www.youtube.com/watch?v=V8EQFq7GZgo&t

#region Move the VIEW! clamped!!

var _half_view_width = camera_get_view_width(view_camera[0]) / 2;
var _half_view_height = camera_get_view_height(view_camera[0]) / 2;
var _cx = x - _half_view_width;
var _cy = y - _half_view_height;

var _cx = clamp(_cx, min_view_x, max_view_x);
var _cy = clamp(_cy, min_view_y, max_view_y);

camera_set_view_pos(view_camera[0], _cx, _cy);

#endregion