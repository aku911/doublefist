var l1806AF3C_0 = false;
l1806AF3C_0 = instance_exists(dude);
if(l1806AF3C_0)
{
	direction = point_direction(x, y, dude.x, dude.y);
}

script_execute(Face, spr_mo_down, spr_mo_right, spr_mo_up, spr_mo_left);