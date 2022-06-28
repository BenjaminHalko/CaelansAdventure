/// @desc
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_black);

var xx,yy,width,height,xmargin,ymargin,texttodraw;
xx = display_get_gui_width()/2;
yy = (display_get_gui_height()/3)*2;
width = string_width(text)/2;
height = string_height("|")/2;
xmargin = 10;
ymargin = 10;
if(blink)
texttodraw = text+"|";
else
texttodraw = text;

draw_roundrect(xx-width-xmargin,yy-height-ymargin,xx+width+xmargin,yy+height+ymargin,true);
draw_text(xx,yy,texttodraw);
draw_set_alpha(1);