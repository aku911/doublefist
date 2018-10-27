/// @DnDAction : YoYo Games.Instances.Sprite_Scale
/// @DnDVersion : 1
/// @DnDHash : 3914C3C6
/// @DnDArgument : "xscale" "2.5"
/// @DnDArgument : "yscale" "2.5"
image_xscale = 2.5;
image_yscale = 2.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19E0079D
/// @DnDArgument : "expr" "50"
/// @DnDArgument : "var" "HP"
HP = 50;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 757359DD
/// @DnDArgument : "expr" "1.5"
/// @DnDArgument : "var" "movement_speed"
movement_speed = 1.5;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 6578172B
/// @DnDArgument : "expr" "-8"
/// @DnDArgument : "var" "knockback_speed"
knockback_speed = -8;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 3DA075CF
/// @DnDArgument : "speed" "movement_speed"
speed = movement_speed;