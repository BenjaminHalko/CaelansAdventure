/// @desc
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_aqua);
draw_set_alpha(image_alpha);
var xx,yy,width,height,xmargin,ymargin,texttodraw;
xx = display_get_gui_width()/2;
yy = (display_get_gui_height()/3)*2+(display_get_gui_height()/25)+display_get_gui_height()/40;
width = string_width(text)/2;
height = string_height("|")/2;
xmargin = 10;
ymargin = 10;
if(blink)
texttodraw = text+"|";
else
texttodraw = text;

var scale = 0.5

draw_roundrect(xx-width*scale-xmargin,yy-height*scale-ymargin,xx+width*scale+xmargin,yy+height*scale+ymargin,true);
draw_text_transformed(xx,yy,texttodraw,scale,scale,0);
draw_set_alpha(1);