/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 72434EA1
/// @DnDArgument : "expr" "is_punching == 1"
if(is_punching == 1)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4682875A
	/// @DnDParent : 72434EA1
	/// @DnDArgument : "var" "is_punching"
	is_punching = 0;

	/// @DnDAction : YoYo Games.Common.Execute_Script
	/// @DnDVersion : 1.1
	/// @DnDHash : 24EFC055
	/// @DnDParent : 72434EA1
	/// @DnDArgument : "var" "self"
	/// @DnDArgument : "script" "Face"
	/// @DnDSaveInfo : "script" "6cfb05de-4259-4d4b-9cd1-e5dff21b85b9"
	self = script_execute(Face);
}