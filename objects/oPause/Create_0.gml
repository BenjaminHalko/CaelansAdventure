/// @desc
if(Load("Info","Room",noone) == noone)
{
	instance_create_layer(x,y,layer,oPauseLevelOne);
	instance_destroy();
}

text[2] = "OPTIONS";
text[1] = "MAIN MENU";
text[0] = "BACK";
pos = 0;
margin = 96;
percent = 0;
for(var i=0; i<=array_length_1d(text)-1;i++)
{
	fontsize[i] = 0.64;
}

if(oGlobalController.previousroom != rOptions) and (oGlobalController.previousroom != rOptionsSound) and (oGlobalController.previousroom != rOptionsDisplay) and (oGlobalController.previousroom != rOptionsGameplay)
previousroom = oGlobalController.previousroom;

iconalpha = 0;
iconrotation = 0;
iconscale = 0;