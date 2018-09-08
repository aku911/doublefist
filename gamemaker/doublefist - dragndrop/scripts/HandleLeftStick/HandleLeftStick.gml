/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 104A910B
/// @DnDArgument : "type" "2"
vspeed = 0;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 6F502E3F
/// @DnDArgument : "type" "1"
hspeed = 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 7B0DD5DE
/// @DnDArgument : "var" "horiz_speed"
horiz_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislh) : 0;

/// @DnDAction : YoYo Games.Gamepad.Get_Gamepad_Axis_Value
/// @DnDVersion : 1.1
/// @DnDHash : 7EF04A37
/// @DnDArgument : "var" "vert_speed"
/// @DnDArgument : "axis" "gp_axislv"
vert_speed = gamepad_is_connected(0) ? gamepad_axis_value(0, gp_axislv) : 0;

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 499695B7
/// @DnDArgument : "expr" "is_punching == 0"
if(is_punching == 0)
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 1C4B4B5E
	/// @DnDParent : 499695B7
	/// @DnDArgument : "expr" "horiz_speed > 0.1"
	if(horiz_speed > 0.1)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
		/// @DnDVersion : 1.1
		/// @DnDHash : 2AB3C996
		/// @DnDParent : 1C4B4B5E
		/// @DnDArgument : "direction" "0"
		direction = 0;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 2CDA0EB7
		/// @DnDParent : 1C4B4B5E
		/// @DnDArgument : "speed" "horiz_speed * 5"
		/// @DnDArgument : "type" "1"
		hspeed = horiz_speed * 5;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 598BD396
	/// @DnDParent : 499695B7
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Expression
		/// @DnDVersion : 1
		/// @DnDHash : 404F8108
		/// @DnDParent : 598BD396
		/// @DnDArgument : "expr" "horiz_speed < 0.1"
		if(horiz_speed < 0.1)
		{
			/// @DnDAction : YoYo Games.Movement.Set_Direction_Fixed
			/// @DnDVersion : 1.1
			/// @DnDHash : 653EB3DF
			/// @DnDParent : 404F8108
			/// @DnDArgument : "direction" "180"
			direction = 180;
		
			/// @DnDAction : YoYo Games.Movement.Set_Speed
			/// @DnDVersion : 1
			/// @DnDHash : 36AE448D
			/// @DnDParent : 404F8108
			/// @DnDArgument : "speed" "horiz_speed * 5"
			/// @DnDArgument : "type" "1"
			hspeed = horiz_speed * 5;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 67BF04B1
	/// @DnDParent : 499695B7
	/// @DnDArgument : "expr" "abs(vert_speed) > 0.1"
	if(abs(vert_speed) > 0.1)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 41518484
		/// @DnDParent : 67BF04B1
		/// @DnDArgument : "speed" "vert_speed * 5"
		/// @DnDArgument : "type" "2"
		vspeed = vert_speed * 5;
	}

	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 4A0A260E
	/// @DnDParent : 499695B7
	/// @DnDArgument : "expr" "abs(horiz_speed) > 0.1 || abs(vert_speed) > 0.1"
	if(abs(horiz_speed) > 0.1 || abs(vert_speed) > 0.1)
	{
		/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7180B2C0
		/// @DnDParent : 4A0A260E
		image_speed = 1;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 79EE2C42
	/// @DnDParent : 499695B7
	else
	{
	
	}
}