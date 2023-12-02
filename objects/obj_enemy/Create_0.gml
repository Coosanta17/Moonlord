/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 61A216A2
event_inherited();

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 15B0E961
/// @DnDComment : Intrinsic variables
/// @DnDInput : 13
/// @DnDArgument : "expr" "ENEMYSTATE.IDLE"
/// @DnDArgument : "expr_3" "xstart"
/// @DnDArgument : "expr_4" "ystart"
/// @DnDArgument : "expr_7" "120"
/// @DnDArgument : "expr_9" "xstart"
/// @DnDArgument : "expr_10" "ystart"
/// @DnDArgument : "expr_12" "5"
/// @DnDArgument : "var" "state"
/// @DnDArgument : "var_1" "hSpeed"
/// @DnDArgument : "var_2" "vSpeed"
/// @DnDArgument : "var_3" "xTo"
/// @DnDArgument : "var_4" "yTo"
/// @DnDArgument : "var_5" "dir"
/// @DnDArgument : "var_6" "timePassed"
/// @DnDArgument : "var_7" "waitDuration"
/// @DnDArgument : "var_8" "wait"
/// @DnDArgument : "var_9" "x_orbit"
/// @DnDArgument : "var_10" "y_orbit"
/// @DnDArgument : "var_11" "aggroCheck"
/// @DnDArgument : "var_12" "aggroCheckDuration"
state = ENEMYSTATE.IDLE;
hSpeed = 0;
vSpeed = 0;
xTo = xstart;
yTo = ystart;
dir = 0;
timePassed = 0;
waitDuration = 120;
wait = 0;
x_orbit = xstart;
y_orbit = ystart;
aggroCheck = 0;
aggroCheckDuration = 5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 67045605
/// @DnDComment : Enemy Sprites
/// @DnDArgument : "expr" "spr_brown_dog_walk"
/// @DnDArgument : "var" "sprMove"
sprMove = spr_brown_dog_walk;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 0BC4ABA2
/// @DnDComment : Enemy Scripts
/// @DnDInput : 7
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_1" "-1"
/// @DnDArgument : "expr_2" "-1"
/// @DnDArgument : "expr_3" "-1"
/// @DnDArgument : "expr_4" "-1"
/// @DnDArgument : "expr_5" "-1"
/// @DnDArgument : "expr_6" "-1"
/// @DnDArgument : "var" "enemyScript[ENEMYSTATE.IDLE]"
/// @DnDArgument : "var_1" "enemyScript[ENEMYSTATE.WANDER]"
/// @DnDArgument : "var_2" "enemyScript[ENEMYSTATE.CHASE]"
/// @DnDArgument : "var_3" "enemyScript[ENEMYSTATE.ATTACK]"
/// @DnDArgument : "var_4" "enemyScript[ENEMYSTATE.HURT]"
/// @DnDArgument : "var_5" "enemyScript[ENEMYSTATE.DIE]"
/// @DnDArgument : "var_6" "enemyScript[ENEMYSTATE.WAIT]"
enemyScript[ENEMYSTATE.IDLE] = -1;
enemyScript[ENEMYSTATE.WANDER] = -1;
enemyScript[ENEMYSTATE.CHASE] = -1;
enemyScript[ENEMYSTATE.ATTACK] = -1;
enemyScript[ENEMYSTATE.HURT] = -1;
enemyScript[ENEMYSTATE.DIE] = -1;
enemyScript[ENEMYSTATE.WAIT] = -1;