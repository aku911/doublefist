/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 00845A15
var l00845A15_0;
l00845A15_0 = keyboard_check_pressed(vk_space);
if (l00845A15_0)
{
	/// @DnDAction : YoYo Games.Rooms.Next_Room
	/// @DnDVersion : 1
	/// @DnDHash : 12E60583
	/// @DnDParent : 00845A15
	room_goto_next();
}