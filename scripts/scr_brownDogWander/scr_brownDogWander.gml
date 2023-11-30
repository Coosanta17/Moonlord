/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 43DC46C3
/// @DnDComment : @function               brownDogWander(x,y,x_orbit,y_orbit)$(13_10)@param {real} x         The x position of the object$(13_10)@param {real} y         The y position of the object$(13_10)@param {real} x_orbit   The x position to randomly move around$(13_10)@param {real} y_orbit   The y position to randomly move around
/// @DnDInput : 4
/// @DnDArgument : "funcName" "brownDogWander"
/// @DnDArgument : "arg" "_x"
/// @DnDArgument : "arg_1" "_y"
/// @DnDArgument : "arg_2" "x_orbit"
/// @DnDArgument : "arg_3" "y_orbit"
function brownDogWander(_x, _y, x_orbit, y_orbit) 
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60533939
	/// @DnDInput : 2
	/// @DnDParent : 43DC46C3
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
	/// @DnDHash : 46C7E0FA
	/// @DnDInput : 2
	/// @DnDParent : 43DC46C3
	/// @DnDArgument : "expr" "spr_brown_dog_walk"
	/// @DnDArgument : "expr_1" "sprMove"
	/// @DnDArgument : "var" "sprMove"
	/// @DnDArgument : "var_1" "sprite_index"
	sprMove = spr_brown_dog_walk;
	sprite_index = sprMove;

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 424F88FB
	/// @DnDComment : If xyTo is the same as current position (at destination) $(13_10)OR $(13_10)time passed is greater than time it takes to travel max distance (given up)$(13_10)$(13_10)(At destination or given up)
	/// @DnDParent : 43DC46C3
	/// @DnDArgument : "expr" "((_x == xTo) && (_y ==yTo)) || (timePassed > enemyWanderDistance/enemySpeed)"
	if(((_x == xTo) && (_y ==yTo)) || (timePassed > enemyWanderDistance/enemySpeed))
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 11EC9CAE
		/// @DnDInput : 2
		/// @DnDParent : 424F88FB
		/// @DnDArgument : "var" "hSpeed"
		/// @DnDArgument : "var_1" "vSpeed"
		hSpeed = 0;
		vSpeed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 79D35759
		/// @DnDParent : 424F88FB
		/// @DnDArgument : "spriteind" "spr_brown_dog_still"
		/// @DnDSaveInfo : "spriteind" "spr_brown_dog_still"
		sprite_index = spr_brown_dog_still;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 588D0B2D
		/// @DnDComment : Set new target
		/// @DnDParent : 424F88FB
		/// @DnDArgument : "expr" "++wait >= waitDuration"
		if(++wait >= waitDuration)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 76493517
			/// @DnDComment : Wander all over map with no fixed position to stay around
			/// @DnDInput : 2
			/// @DnDParent : 588D0B2D
			/// @DnDArgument : "expr" "_x + (irandom_range(-50,50))"
			/// @DnDArgument : "expr_1" "_y + (irandom_range(-50,50))"
			/// @DnDArgument : "var" "x_orbit"
			/// @DnDArgument : "var_1" "y_orbit"
			x_orbit = _x + (irandom_range(-50,50));
			y_orbit = _y + (irandom_range(-50,50));
		
			/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
			/// @DnDVersion : 1
			/// @DnDHash : 55CFED3C
			/// @DnDDisabled : 1
			/// @DnDParent : 588D0B2D
			/// @DnDArgument : "msg" ""x and y orbit set to {0}, {1}", x_orbit, y_orbit"
		
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 69BAFAB3
			/// @DnDInput : 5
			/// @DnDParent : 588D0B2D
			/// @DnDArgument : "expr_2" "point_direction(_x,_y,x_orbit,y_orbit) + irandom_range(-45,45)"
			/// @DnDArgument : "expr_3" "_x + lengthdir_x(enemyWanderDistance, dir)"
			/// @DnDArgument : "expr_4" "_y + lengthdir_y(enemyWanderDistance, dir)"
			/// @DnDArgument : "var" "wait"
			/// @DnDArgument : "var_1" "timePassed"
			/// @DnDArgument : "var_2" "dir"
			/// @DnDArgument : "var_3" "xTo"
			/// @DnDArgument : "var_4" "yTo"
			wait = 0;
			timePassed = 0;
			dir = point_direction(_x,_y,x_orbit,y_orbit) + irandom_range(-45,45);
			xTo = _x + lengthdir_x(enemyWanderDistance, dir);
			yTo = _y + lengthdir_y(enemyWanderDistance, dir);
		}
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 2CC8B487
	/// @DnDComment : Move towards new direction
	/// @DnDParent : 43DC46C3
	else
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 354AAFD2
		/// @DnDParent : 2CC8B487
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "expr_relative" "1"
		/// @DnDArgument : "var" "timePassed"
		timePassed += 1;
	
		/// @DnDAction : YoYo Games.Common.Temp_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 3B255A21
		/// @DnDInput : 2
		/// @DnDParent : 2CC8B487
		/// @DnDArgument : "var" "_distanceToGo"
		/// @DnDArgument : "value" "point_distance(_x,_y,xTo,yTo)"
		/// @DnDArgument : "var_1" "_speedThisFrame"
		/// @DnDArgument : "value_1" "enemySpeed"
		var _distanceToGo = point_distance(_x,_y,xTo,yTo);
		var _speedThisFrame = enemySpeed;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 21F562FC
		/// @DnDParent : 2CC8B487
		/// @DnDArgument : "imageind_relative" "1"
		/// @DnDArgument : "spriteind" "spr_brown_dog_walk"
		/// @DnDSaveInfo : "spriteind" "spr_brown_dog_walk"
		sprite_index = spr_brown_dog_walk;
		image_index += 0;
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 6D0AB3F0
		/// @DnDParent : 2CC8B487
		/// @DnDArgument : "expr" "_distanceToGo < enemySpeed"
		if(_distanceToGo < enemySpeed)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 55B3AF85
			/// @DnDParent : 6D0AB3F0
			/// @DnDArgument : "expr" "_distanceToGo"
			/// @DnDArgument : "var" "_speedThisFrame"
			_speedThisFrame = _distanceToGo;
		}
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0E8337D8
		/// @DnDInput : 2
		/// @DnDParent : 2CC8B487
		/// @DnDArgument : "expr" "lengthdir_x(_speedThisFrame,dir)"
		/// @DnDArgument : "expr_1" "lengthdir_y(_speedThisFrame,dir)"
		/// @DnDArgument : "var" "hSpeed"
		/// @DnDArgument : "var_1" "vSpeed"
		hSpeed = lengthdir_x(_speedThisFrame,dir);
		vSpeed = lengthdir_y(_speedThisFrame,dir);
	
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 731379B5
		/// @DnDParent : 2CC8B487
		/// @DnDArgument : "expr" "hSpeed != 0"
		if(hSpeed != 0)
		{
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 11C44FE7
			/// @DnDParent : 731379B5
			/// @DnDArgument : "expr" "(sign(hSpeed))/2"
			/// @DnDArgument : "var" "image_xscale"
			image_xscale = (sign(hSpeed))/2;
		}
	}
}