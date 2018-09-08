/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 446EB716
/// @DnDArgument : "expr" "abs(rightstick) > 0.1 && can_punch"
if(abs(rightstick) > 0.1 && can_punch)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E92D9A0
	/// @DnDParent : 446EB716
	/// @DnDArgument : "var" "can_punch"
	can_punch = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 058F28B0
	/// @DnDParent : 446EB716
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "is_punching"
	is_punching = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1CEF8967
	/// @DnDParent : 446EB716
	/// @DnDArgument : "var" "rightstick"
	/// @DnDArgument : "op" "2"
	if(rightstick > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 7FA3C826
		/// @DnDParent : 1CEF8967
		/// @DnDArgument : "spriteind" "spr_punch_right"
		/// @DnDSaveInfo : "spriteind" "3ed6c6cc-1b16-4d25-a40f-b028a1874240"
		sprite_index = spr_punch_right;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2D82F6B8
		/// @DnDParent : 1CEF8967
		image_speed = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 45F5E900
	/// @DnDParent : 446EB716
	/// @DnDArgument : "var" "rightstick"
	/// @DnDArgument : "op" "1"
	if(rightstick < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 592FCA89
		/// @DnDParent : 45F5E900
		/// @DnDArgument : "spriteind" "spr_punch_left"
		/// @DnDSaveInfo : "spriteind" "aeaf205e-b4f8-4716-9296-89407ad3de78"
		sprite_index = spr_punch_left;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 3AA8DB82
		/// @DnDParent : 45F5E900
		image_speed = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3633BD16
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 0735A849
	/// @DnDParent : 3633BD16
	/// @DnDArgument : "expr" "abs(rightstick) < 0.1 && is_punching == 1"
	if(abs(rightstick) < 0.1 && is_punching == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 7CC02F68
		/// @DnDParent : 0735A849
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "can_punch"
		can_punch = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 57A08639
		/// @DnDParent : 0735A849
		/// @DnDArgument : "var" "is_punching"
		is_punching = 0;
	}
}