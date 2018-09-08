/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 10795DA1
/// @DnDArgument : "type" "2"
vspeed = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 7C3A54CD
/// @DnDArgument : "type" "1"
hspeed = 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 3788EE4A
/// @DnDArgument : "var" "horiz_speed"
horiz_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 4AC09628
/// @DnDArgument : "var" "vert_speed"
/// @DnDArgument : "axis" "gp_axislv"
vert_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 206C4F6F
/// @DnDArgument : "var" "rightstick"
/// @DnDArgument : "axis" "gp_axisrh"
rightstick = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axisrh) : 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 7A52FA43
/// @DnDArgument : "expr" "is_punching == 0"
if(is_punching == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 46FDE5E8
	/// @DnDParent : 7A52FA43
	/// @DnDArgument : "expr" "abs(horiz_speed) > 0.1"
	if(abs(horiz_speed) > 0.1)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 27E65E1D
		/// @DnDParent : 46FDE5E8
		/// @DnDArgument : "speed" "horiz_speed * 5"
		/// @DnDArgument : "type" "1"
		hspeed = horiz_speed * 5;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6A8EFF25
	/// @DnDParent : 7A52FA43
	/// @DnDArgument : "expr" "abs(vert_speed) > 0.1"
	if(abs(vert_speed) > 0.1)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 06977E3E
		/// @DnDParent : 6A8EFF25
		/// @DnDArgument : "speed" "vert_speed * 5"
		/// @DnDArgument : "type" "2"
		vspeed = vert_speed * 5;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1508F114
	/// @DnDParent : 7A52FA43
	/// @DnDArgument : "expr" "abs(horiz_speed) > 0.1 || abs(vert_speed) > 0.1"
	if(abs(horiz_speed) > 0.1 || abs(vert_speed) > 0.1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 58A911BC
		/// @DnDParent : 1508F114
		image_speed = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 034E5624
	/// @DnDParent : 7A52FA43
	else
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 79EB21E3
		/// @DnDParent : 034E5624
		/// @DnDArgument : "speed" "0"
		image_speed = 0;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 1597E680
		/// @DnDParent : 034E5624
		/// @DnDArgument : "spriteind" "spr_dude_walking"
		/// @DnDSaveInfo : "spriteind" "97e5273f-5c40-403a-876a-95738ad1f16f"
		sprite_index = spr_dude_walking;
		image_index = 0;
	}
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 24FC285A
/// @DnDArgument : "expr" "abs(rightstick) > 0.1 && can_punch"
if(abs(rightstick) > 0.1 && can_punch)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5C5FC841
	/// @DnDParent : 24FC285A
	/// @DnDArgument : "var" "can_punch"
	can_punch = 0;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 34F753A3
	/// @DnDParent : 24FC285A
	/// @DnDArgument : "expr" "1"
	/// @DnDArgument : "var" "is_punching"
	is_punching = 1;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 75CE6FF9
	/// @DnDParent : 24FC285A
	/// @DnDArgument : "var" "rightstick"
	/// @DnDArgument : "op" "2"
	if(rightstick > 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3D9DCC66
		/// @DnDParent : 75CE6FF9
		/// @DnDArgument : "spriteind" "spr_punch_right"
		/// @DnDSaveInfo : "spriteind" "3ed6c6cc-1b16-4d25-a40f-b028a1874240"
		sprite_index = spr_punch_right;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 494538CF
		/// @DnDParent : 75CE6FF9
		image_speed = 1;
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00ED129C
	/// @DnDParent : 24FC285A
	/// @DnDArgument : "var" "rightstick"
	/// @DnDArgument : "op" "1"
	if(rightstick < 0)
	{
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 4C413F49
		/// @DnDParent : 00ED129C
		/// @DnDArgument : "spriteind" "spr_punch_left"
		/// @DnDSaveInfo : "spriteind" "aeaf205e-b4f8-4716-9296-89407ad3de78"
		sprite_index = spr_punch_left;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 057C2E8C
		/// @DnDParent : 00ED129C
		image_speed = 1;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 5EA6328B
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 07606486
	/// @DnDParent : 5EA6328B
	/// @DnDArgument : "expr" "abs(rightstick) < 0.1 && is_punching == 1"
	if(abs(rightstick) < 0.1 && is_punching == 1)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 570606B0
		/// @DnDParent : 07606486
		/// @DnDArgument : "expr" "1"
		/// @DnDArgument : "var" "can_punch"
		can_punch = 1;
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2B2A69F1
		/// @DnDParent : 07606486
		/// @DnDArgument : "var" "is_punching"
		is_punching = 0;
	}
}