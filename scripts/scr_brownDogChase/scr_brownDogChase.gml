/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4176D76A
/// @DnDComment : @function         brownDogChase(x,y)$(13_10)@param {real} x   The x position of the object$(13_10)@param {real} y   The y position of the object
/// @DnDInput : 2
/// @DnDArgument : "funcName" "brownDogChase"
/// @DnDArgument : "arg" "_x"
/// @DnDArgument : "arg_1" "_y"
function brownDogChase(_x, _y) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 345CC3C9
	/// @DnDInput : 2
	/// @DnDParent : 4176D76A
	/// @DnDArgument : "expr" "hSpeed"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "expr_1" "vSpeed"
	/// @DnDArgument : "expr_relative_1" "1"
	/// @DnDArgument : "var" "x"
	/// @DnDArgument : "var_1" "y"
	x += hSpeed;
	y += vSpeed;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 63501DE6
	/// @DnDParent : 4176D76A
	/// @DnDArgument : "expr" "sprMove"
	/// @DnDArgument : "var" "sprite_index"
	sprite_index = sprMove;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 04A40A80
	/// @DnDParent : 4176D76A
	/// @DnDArgument : "expr" "instance_exists(target)"
	if(instance_exists(target))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 124F1EB7
		/// @DnDInput : 2
		/// @DnDParent : 04A40A80
		/// @DnDArgument : "expr" "target.x"
		/// @DnDArgument : "expr_1" "target.y"
		/// @DnDArgument : "var" "xTo"
		/// @DnDArgument : "var_1" "yTo"
		xTo = target.x;
		yTo = target.y;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 06C94C24
		/// @DnDParent : 04A40A80
		/// @DnDArgument : "var" "_distanceToGo"
		/// @DnDArgument : "value" "point_direction(_x,_y,xTo,yTo)"
		var _distanceToGo = point_direction(_x,_y,xTo,yTo);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0223DBA3
		/// @DnDDisabled : 1
		/// @DnDParent : 04A40A80
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "image_speed"
	
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 6B88F1F7
		/// @DnDParent : 04A40A80
		/// @DnDArgument : "expr" "point_direction(x,y,xTo,yTo)"
		/// @DnDArgument : "var" "dir"
		dir = point_direction(x,y,xTo,yTo);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 1E52A09A
		/// @DnDParent : 04A40A80
		/// @DnDArgument : "expr" "_distanceToGo > enemySpeed"
		if(_distanceToGo > enemySpeed)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 6B0B10DC
			/// @DnDInput : 2
			/// @DnDParent : 1E52A09A
			/// @DnDArgument : "expr" "lengthdir_x(enemySpeed,dir)"
			/// @DnDArgument : "expr_1" "lengthdir_y(enemySpeed,dir)"
			/// @DnDArgument : "var" "hSpeed"
			/// @DnDArgument : "var_1" "vSpeed"
			hSpeed = lengthdir_x(enemySpeed,dir);
			vSpeed = lengthdir_y(enemySpeed,dir);
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 4DED1233
		/// @DnDParent : 04A40A80
		else
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 7C61E2B0
			/// @DnDInput : 2
			/// @DnDParent : 4DED1233
			/// @DnDArgument : "expr" "lengthdir_x(_distanceToGo,dir)"
			/// @DnDArgument : "expr_1" "lengthdir_y(_distanceToGo,dir)"
			/// @DnDArgument : "var" "hSpeed"
			/// @DnDArgument : "var_1" "vSpeed"
			hSpeed = lengthdir_x(_distanceToGo,dir);
			vSpeed = lengthdir_y(_distanceToGo,dir);
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 579CD0D5
		/// @DnDParent : 04A40A80
		/// @DnDArgument : "expr" "hSpeed != 0"
		if(hSpeed != 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 70BA5448
			/// @DnDParent : 579CD0D5
			/// @DnDArgument : "expr" "(sign(hSpeed))/2"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = (sign(hSpeed))/2;
		}
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 2D0411BD
		/// @DnDParent : 04A40A80
		/// @DnDArgument : "expr" "(point_distance(_x,_y,obj_dog.x,obj_dog.y) > enemyAggroRadius)"
		if((point_distance(_x,_y,obj_dog.x,obj_dog.y) > enemyAggroRadius))
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 53647791
			/// @DnDParent : 2D0411BD
			/// @DnDArgument : "expr" "ENEMYSTATE.WANDER"
			/// @DnDArgument : "var" "state"
			state = ENEMYSTATE.WANDER;
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 0EC07B15
			/// @DnDInput : 2
			/// @DnDParent : 2D0411BD
			/// @DnDArgument : "expr" "1"
			/// @DnDArgument : "expr_1" "0.5"
			/// @DnDArgument : "var" "image_speed"
			/// @DnDArgument : "var_1" "enemySpeed"
			image_speed = 1;
			enemySpeed = 0.5;
		}
	}
}