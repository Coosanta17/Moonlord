/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57BEF150
/// @DnDArgument : "code" "function scr_depth(){$(13_10)	var _inst = instance_place(x, y, obj_sensor_depth);$(13_10)	if(!_inst) depth = -bbox_bottom; 	$(13_10)}"
function scr_depth(){
	var _inst = instance_place(x, y, obj_sensor_depth);
	if(!_inst) depth = -bbox_bottom; 	
}