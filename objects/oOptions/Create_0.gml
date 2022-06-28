/// @desc
text[4] = "Credits";
//text[4] = "Switch User";
text[3] = "Gameplay\nOptions";
text[2] = "Display\nOptions";
text[1] = "Audio\nOptions";
text[0] = "Back";
pos = 0;
margin = 82.29;
percent = 0;
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.64;
}
selected = true;

if(oGlobalController.previousroom != rOptions) and (oGlobalController.previousroom != rOptionsSound) and (oGlobalController.previousroom != rOptionsDisplay) and (oGlobalController.previousroom != rOptionsGameplay)
previousroom = oGlobalController.previousroom;