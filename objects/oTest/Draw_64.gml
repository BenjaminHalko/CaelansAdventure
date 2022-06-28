/// @desc
var x1 = 0;
var y1 = 0;

var w = display_get_gui_width();
var h = display_get_gui_height();

var startdraw = -h/50;
var displaymargin = 400;
var displayheight = 340;
var scale = 0.5;
var bordermargin = 64;
var textbordermargin = h/30;
var scaleborder = (((w/2)+(400*(display_get_gui_height()/960)))-((w/2)-(400*(display_get_gui_height()/960))))/sprite_get_width(sTestEnergyBorder);

draw_set_colour(backgroundcolour[mode]);
draw_sprite_ext(sTestWallpaper,0,x1,y1,1,1,0,c_white,backalpha);
if(!destroy)
{
	draw_sprite_ext(sTestEnergyBorder,0,w/2,startdraw-sprite_get_height(sTestEnergyBorder)*scaleborder*(1-energyborderalpha),scaleborder,scaleborder,0,c_white,energyborderalpha);
}
else
{
	var phase = round(healthbar*1000)/10 != 0;
	
	if(!doneExploding)
	{
		var done = true;
		for(var i = 0; i < energyboardcoloums; i++)
		{
			for(var j = 0; j < energyboardrows; j++)
			{
				if(phase)
				{
					energyboardx[i,j] = energyboardxstart[i,j]+random_range(-energyboardshake,energyboardshake);
					energyboardy[i,j] = energyboardystart[i,j]+random_range(-energyboardshake,energyboardshake);
				}
				else
				{
					energyboardx[i,j] += energyboarhsp[i,j];
					energyboardy[i,j] += energyboardvsp[i,j];
					energyboardvsp[i,j] += energyboardgrv[i,j];
				}
				
				if(energyboardy[i,j] < display_get_height()+10) done = false;
				draw_sprite_part_ext(sTestEnergyBorder,0,sprite_get_width(sTestEnergyBorder)/energyboardcoloums*i,sprite_get_height(sTestEnergyBorder)/energyboardrows*j,sprite_get_width(sTestEnergyBorder)/energyboardcoloums,sprite_get_height(sTestEnergyBorder)/energyboardrows,energyboardx[i,j],energyboardy[i,j],scaleborder,scaleborder,c_white,energyborderalpha);
			}
		}
		doneExploding = done;
	}
}
draw_set_alpha(0.5);
if(mode != 0)
{
	draw_sprite_ext(sTestBackground,mode-1,x1,y1,1,1,0,backgroundcolour[mode],alpha);
}
draw_set_alpha(backalpha)
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_colour(c_aqua);
draw_set_font(fTestEnergy);
var barheight1 = startdraw+displaymargin*scaleborder+((displayheight*scaleborder)/2);
var barheight2 = startdraw+displaymargin*scaleborder+(displayheight*scale/2-textbordermargin*2)+((displayheight*scaleborder)/2);
draw_text_transformed((w/2)-(400*(display_get_gui_height()/960)-bordermargin),barheight1-textbordermargin/2,textenergy,scale,scale,0);
draw_healthbar((w/2)-(400*(display_get_gui_height()/960)-bordermargin),barheight1+textbordermargin/2,(w/2)+(400*(display_get_gui_height()/960)-bordermargin),barheight2+textbordermargin/2,round(healthbar*1000)/10,c_black,c_red,c_blue,0,false,false);
draw_set_alpha(1);

if(!destroy)
{
	draw_set_valign(fa_top);
	draw_set_colour(c_aqua);
	draw_set_halign(fa_left);
	draw_set_font(fTestDescription);
	var width = string_width(description);
	var height = string_height(description);
	
	var scale = min(1,(800*(display_get_gui_height()/960)/max(width,height)));
	
	var drawxstart = w/2-(string_width(description)*scale/2);
	var drawystart = -h/40+h/50+startdraw+(sprite_get_height(sTestEnergyBorder)*scaleborder);
	
	for(var i = 1; i <= string_length(textdescription); i++)
	{
		
		var moveAmountScaleString = string_length(secondline)+string_length(global.testquestion[test,question]);
		var moveAmountScaleText = string_length(textsecondline);
		if(instance_exists(oTestWrittenQuestion))
		{
			moveAmountScaleText += string_length(oTestWrittenQuestion.textquestiondraw);
		}
		
		var moveAmount = 3;
		if(1/moveAmountScaleString < 0.05)
		var moveAmount = moveAmount*min((moveAmountScaleString-moveAmountScaleText)/moveAmountScaleString,0.25)/0.25;
		else
		var moveAmount = moveAmount*((moveAmountScaleString-moveAmountScaleText)/moveAmountScaleString);
		var xExtra = random_range(-moveAmount,moveAmount);
		var yExtra = random_range(-moveAmount,moveAmount);
		draw_text_transformed(drawxstart+string_width(string_copy(textdescription,1,i-1))*scale+xExtra,drawystart+yExtra,string_char_at(textdescription,i),scale,scale,0);
	}
	
	draw_set_font(fTestQuestion);
	var width2 = string_width(secondline);
	var height2 = string_height(secondline);

	var scale2 = min(1,(800*(display_get_gui_height()/960)/max(width2,height2)));
	draw_text_transformed(w/2-(string_width(secondline)*scale2/2),max(h/40,height*scale-h/40)+startdraw+(sprite_get_height(sTestEnergyBorder)*scaleborder),textsecondline,scale2,scale2,0);
}