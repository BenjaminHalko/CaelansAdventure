/// @desc
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_font(fTestQuestion);
draw_set_color(c_black);
var scale = 0.75;
var shakeAmount = 15;
var shadowX = 2;
var shadowY = 2;
var extraX = random_range(-shake*shakeAmount,shake*shakeAmount);
var extraY = random_range(-shake*shakeAmount,shake*shakeAmount);
draw_text_transformed(1500+extraX+shadowX,64+extraY+shadowY,textToDraw,scale,scale,0);
draw_set_color(make_color_rgb(0,174,240));
draw_text_transformed(1500+extraX,64+extraY,textToDraw,scale,scale,0);
var extraX = random_range(-shake*shakeAmount,shake*shakeAmount);
var extraY = random_range(-shake*shakeAmount,shake*shakeAmount);
var height = round(string_height(text)*scale/2);
NineSliceBox(sBossHealthBar,1,1520+extraX+shadowX,64-height+extraY+shadowY,1520+extraX+(280*borderAlpha)+shadowX,64+height+extraY+shadowY,1,1,c_white,borderAlpha);
if(round(healthbar) > 0)
draw_healthbar(1521+extraX,64-height+1+extraY,1799+extraX,64+height-1+extraY,median(0,healthbar,100),c_black,c_red,c_green,180,false,false);
NineSliceBox(sBossHealthBar,0,1520+extraX,64-height+extraY,1520+extraX+(280*borderAlpha),64+height+extraY,1,1,c_white,borderAlpha);