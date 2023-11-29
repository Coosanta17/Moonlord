/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0EE61369
/// @DnDArgument : "code" "/// @description $(13_10)//Checking if something is colliding with me$(13_10)var _inst = instance_place(x, y, obj_all_creatures);$(13_10)if(!_inst) exit;$(13_10)	$(13_10)//Creating a list for the ones that are colliding$(13_10)var _lista = ds_list_create();$(13_10)//Why a list? Imagine if your player and your NPC collided with the sensor, we want them to use the system simultaneously.$(13_10)$(13_10)//Putting collided ones on the list$(13_10)var coli = instance_place_list(x, y, obj_all_creatures, _lista, true);$(13_10)$(13_10)//Starting a loop to access the ones that collided$(13_10)for(var i = 0; i < coli; i++)$(13_10){	$(13_10)	//Putting the same depth as the layer		//Why 99 ? when you create a new layer it adds +100 depth so i added 99 here to be able to do the next part.      $(13_10)	_lista[| i].depth = layer_get_depth(_layer) + 99 - _lista[| i].bbox_bottom/10;$(13_10)														//Why this part ?$(13_10)														//R:  Imagine again if your player and the NPC are together with the sensor, $(13_10)														//    well we want that if one of them is a little above it is at the bottom and the other at the top.$(13_10)}$(13_10)//Destroying the temporary list$(13_10)ds_list_destroy(_lista);$(13_10)$(13_10)		$(13_10)"
/// @description 
//Checking if something is colliding with me
var _inst = instance_place(x, y, obj_all_creatures);
if(!_inst) exit;
	
//Creating a list for the ones that are colliding
var _lista = ds_list_create();
//Why a list? Imagine if your player and your NPC collided with the sensor, we want them to use the system simultaneously.

//Putting collided ones on the list
var coli = instance_place_list(x, y, obj_all_creatures, _lista, true);

//Starting a loop to access the ones that collided
for(var i = 0; i < coli; i++)
{	
	//Putting the same depth as the layer		//Why 99 ? when you create a new layer it adds +100 depth so i added 99 here to be able to do the next part.      
	_lista[| i].depth = layer_get_depth(_layer) + 99 - _lista[| i].bbox_bottom/10;
														//Why this part ?
														//R:  Imagine again if your player and the NPC are together with the sensor, 
														//    well we want that if one of them is a little above it is at the bottom and the other at the top.
}
//Destroying the temporary list
ds_list_destroy(_lista);