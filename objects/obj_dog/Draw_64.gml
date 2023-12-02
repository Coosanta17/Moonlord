/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1AC773C1
/// @DnDComment : Fps: [fps_real]$(13_10)Depth: [depth]$(13_10)Position: [x], [y]
/// @DnDArgument : "code" "draw_text(20, 10, "Fps:" +  string(fps_real) + "\nDepth:" + string(depth) + string("\nPosition: {0}, {1}", x, y));$(13_10)"
draw_text(20, 10, "Fps:" +  string(fps_real) + "\nDepth:" + string(depth) + string("\nPosition: {0}, {1}", x, y));