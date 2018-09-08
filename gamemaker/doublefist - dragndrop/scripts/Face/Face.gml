/// @DnDAction : YoYo Games.Instances.Sprite_Animation_Speed
/// @DnDVersion : 1
/// @DnDHash : 4E979821
/// @DnDArgument : "speed" "0"
image_speed = 0;

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 579A1837
image_angle = 0;

/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 28236BB8
/// @DnDArgument : "expr" "direction"
var l28236BB8_0 = direction;
switch(l28236BB8_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1DD023FE
	/// @DnDParent : 28236BB8
	case 0:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 3599A218
		/// @DnDParent : 1DD023FE
		/// @DnDArgument : "spriteind" "spr_walking_right"
		/// @DnDSaveInfo : "spriteind" "f4bcb595-edf3-4055-bd05-ec779249d7e3"
		sprite_index = spr_walking_right;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1205C052
	/// @DnDParent : 28236BB8
	/// @DnDArgument : "const" "90"
	case 90:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 57AB5EEB
		/// @DnDParent : 1205C052
		/// @DnDArgument : "spriteind" "spr_dude_walking"
		/// @DnDSaveInfo : "spriteind" "97e5273f-5c40-403a-876a-95738ad1f16f"
		sprite_index = spr_dude_walking;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 2785CDA1
	/// @DnDParent : 28236BB8
	/// @DnDArgument : "const" "180"
	case 180:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 77C6E959
		/// @DnDParent : 2785CDA1
		/// @DnDArgument : "spriteind" "spr_walking_right"
		/// @DnDSaveInfo : "spriteind" "f4bcb595-edf3-4055-bd05-ec779249d7e3"
		sprite_index = spr_walking_right;
		image_index = 0;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 021F34C6
		/// @DnDParent : 2785CDA1
		/// @DnDArgument : "angle" "180"
		image_angle = 180;
	
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 016949E1
		/// @DnDParent : 2785CDA1
		/// @DnDArgument : "spriteind" "spr_dude_walking"
		/// @DnDSaveInfo : "spriteind" "97e5273f-5c40-403a-876a-95738ad1f16f"
		sprite_index = spr_dude_walking;
		image_index = 0;
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 070160BC
	/// @DnDParent : 28236BB8
	/// @DnDArgument : "const" "270"
	case 270:
		/// @DnDAction : YoYo Games.Instances.Set_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 2C640421
		/// @DnDParent : 070160BC
		/// @DnDArgument : "spriteind" "spr_dude_walking"
		/// @DnDSaveInfo : "spriteind" "97e5273f-5c40-403a-876a-95738ad1f16f"
		sprite_index = spr_dude_walking;
		image_index = 0;
		break;
}