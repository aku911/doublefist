// First step figure which edge
edge = irandom(3);
xcoord = 0;
ycoord = 0;

if (number_mohawks == 10) return;

switch (edge) 
{
	case 0:
		xcoord = view_xport[0] + irandom(view_wport[0]);
		ycoord = view_yport[0] - sprite_get_height(spr_mo_down);
		break;
		

	case 1:
		ycoord = view_yport[0] + irandom(view_hport[0]);
		xcoord = view_xport[0] + view_wport[0] + sprite_get_width(spr_mo_down);
		break;

	case 2:
		xcoord = view_xport[0] + irandom(view_wport[0]);
		ycoord = view_yport[0] + view_hport[0] + sprite_get_height(spr_mo_down);
		break;

	case 3:
		ycoord = view_yport[0] + irandom(view_hport[0]);
		xcoord = view_xport[0] - sprite_get_width(spr_mo_down);
		break;
}


instance_create_layer(xcoord, ycoord, "enemy_layer", mohawk);
number_mohawks ++;
alarm_set(0, spawnRate * 2);