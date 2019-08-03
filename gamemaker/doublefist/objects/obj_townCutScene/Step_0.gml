/// @description Insert description here
// You can write your code in this editor
var cam = instance_find(objCamera, 0);
if (cam != noone) {
	cam.follow = obj_townCamera;
}


if(currentState == cutSceneStates.Active) { //While it's running
	switch (currentStep)
	{
		case 0: // Move the camera down to and to the left
			obj_townCamera.x ++;
			obj_townCamera.y ++;
		break;
	}
}