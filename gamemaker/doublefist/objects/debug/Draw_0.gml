/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 71BE9D83
/// @DnDArgument : "color" "$FF000000"
draw_set_colour($FF000000 & $ffffff);
draw_set_alpha(($FF000000 >> 24) / $ff);

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 1824E610
/// @DnDArgument : "font" "arialHuge"
/// @DnDSaveInfo : "font" "121aeb5a-232a-48ce-98ac-16211b0d6666"
draw_set_font(arialHuge);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 3136F055
/// @DnDArgument : "caption" ""Face Dir:""
/// @DnDArgument : "var" "dude.face_dir"
draw_text(0, 0, string("Face Dir:") + string(dude.face_dir));