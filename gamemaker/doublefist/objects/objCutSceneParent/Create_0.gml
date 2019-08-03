/// @description Variables
currentStep = 0; //The step of the cut scene
counter = 0; //A way to count things
//Possible States for the cut scene
enum cutSceneStates {
	Paused,
	Active
}
currentState = cutSceneStates.Active; //The current state of the cut scene

//Debugging
showLocation = false;
playerCanMove = false; //Make it so player can't move