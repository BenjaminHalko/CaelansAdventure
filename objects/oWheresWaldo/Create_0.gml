/// @desc
expand = false;
mouseon = false;
question = oTest.question;
image_speed = 0;
alpha = 0;
var xx1 = 400;
var xx2 = -400;
var yy1 = -200;
var yy2 = 200;

var camera = view_get_camera(0);

var x1 = camera_get_view_x(camera);
var y1 = camera_get_view_y(camera);

var w = camera_get_view_width(camera);
var h = camera_get_view_height(camera);

var y2 = y1 + h;

image_angle = random(360);
sprite_index = sTestImages;

xx = irandom_range(xx1,xx2);
yy = irandom_range(yy1,yy2);

scale = 0.75;
x =	xx*(w/display_get_gui_width())+(x1+(w/2));
y = yy*(h/display_get_gui_height())+(y2-(h/4));

switch(oTest.test)
{
	case 6:
	{
		switch(oTest.question)
		{
			case 1:
			{
				image_index = 2;
				image_blend = c_red;
				extraindex[0] = 0;
				extrablend[0] = c_red;
				extraindex[1] = 0;
				extrablend[1] = c_yellow;
				extraindex[2] = 0;
				extrablend[2] = c_blue;
				extraindex[3] = 1;
				extrablend[3] = c_red;
				extraindex[4] = 1;
				extrablend[4] = c_yellow;
				extraindex[5] = 1;
				extrablend[5] = c_blue;
				extraindex[6] = 2;
				extrablend[6] = c_yellow;
				extraindex[6] = 2;
				extrablend[6] = c_blue;
				break;
			}
			case 2:
			{
				image_index = 2;
				image_blend = c_red;
				extraindex[0] = 1;
				extrablend[0] = c_red;
				extraindex[1] = 0;
				extrablend[1] = c_red;
				break;
			}
		}
		break;
	}
	case 7:
	{
		image_index = 56;
		extraindex[0] = 55;
		extrablend[0] = c_white;
		scale = 1.5;
		break;
	}
	case 31:
	{
		switch(oTest.question)
		{
			case 1:
			{
				image_index = 58;
				extraindex[0] = 57;
				extrablend[0] = c_white;
				scale = 1.5;
				break;
			}
		}
		break;
	}
}

for(var i = 0; i < array_length_1d(extraindex); i++)
{

	groupamount[i] = 100;
	if(oTest.test == 7)
	{
		groupamount[i] = 30 * oTest.question;
	}
	else if(extrablend[i] == image_blend)
	{
		groupamount[i] = 200;
	}
	
	if(global.annaramode)
	{
		groupamount[i] /= 2;
	}
	
	
	
	for(var j = 0; j < (groupamount[i]/array_length_1d(extraindex)); j++)
	{
		extrax[i,j] = irandom_range(xx1,xx2);
		extray[i,j] = irandom_range(yy1,yy2);
		extrarotation[i,j] = random(360);
	}
	shufflednum[i] = i;
}

objectscale = scale;