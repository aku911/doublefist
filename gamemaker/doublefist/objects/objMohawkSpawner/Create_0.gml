/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 383BAC1E
/// @DnDArgument : "expr" "room_speed * 2"
/// @DnDArgument : "var" "spawnRate"
spawnRate = room_speed * 2;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 2FBD61DC
/// @DnDArgument : "steps" "spawnRate"
alarm_set(0, spawnRate);

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 7E84E77B
/// @DnDArgument : "var" "number_mohawks"
number_mohawks = 0;