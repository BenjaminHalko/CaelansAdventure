/// @desc
draw_self();
if(floatingiconlowalpha != 1)
{
	DrawIcon(x,icony,number+1,1,0,floatingiconalpha,false);
	DrawIcon(x,y-46,number,1,0,iconalpha,true);
	DrawIcon(x,y-46,number+1,1,0,floatingiconlowalpha,false);
}
else
{
	DrawIcon(iconX,iconY,number+1,moveiconscale,0,moveiconalpha,true);
}