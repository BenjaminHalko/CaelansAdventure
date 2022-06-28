/// @desc 
if(percent < 1)
{
	percent = min(1,percent+max(((1-percent)/10),0.005));
}
else if(y == ystart-(pos*margin))
{
	Inputs();
	if(!selected)
	{
		infrontalpha = Approch(infrontalpha,0,alphaspd);
		if(key_back) SlideTransistion(TRANS_MODE.RESTART);
		
		if(key_up_pressed)
		{
			for(var i = pos-1; i >= 0; i--)
			{
				if(collected[i]) or (i == 0)
				{
					pos = i;
					break;
				}
			}
		}

		if(key_down_pressed)
		{
			for(var i = pos+1; i <= array_length_1d(text)-1; i++)
			{
				if(collected[i]) or (i == 0)
				{
					pos = i;
					break;
				}
			}
		}
		
		if(key_enter)
		{
			if(pos != 0)
			{
				if(collected[pos])
				{
					selected = true;
					if(!watched[pos])
					{
						Save("Extras","Watched - "+string(pos),true);
						watched[pos] = true;
					}
				}
			}
			else
			{
				SlideTransistion(TRANS_MODE.RESTART);
			}
		}
	}
	else
	{
		infrontalpha = Approch(infrontalpha,1,alphaspd);
		if(key_back) or (key_enter) selected = false;
		
		if(key_left_pressed)
		{
			if(pos == 0) pos = array_length_1d(text)-1; else pos -= 1;
			while(!collected[pos]) or (pos == 0)
			{
				if(pos == 0) pos = array_length_1d(text)-1; else pos -= 1;
			}
			
			if(!watched[pos])
			{
				Save("Extras","Watched - "+string(pos),true);
				watched[pos] = true;
			}
		}

		if(key_right_pressed)
		{
			if(pos == array_length_1d(text)-1) pos = 0; else pos += 1;
			while(!collected[pos]) or (pos == 0)
			{
				if(pos == array_length_1d(text)-1) pos = 0; else pos += 1;
			}
			
			if(!watched[pos])
			{
				Save("Extras","Watched - "+string(pos),true);
				watched[pos] = true;
			}
		}
		
		y = ystart-(pos*margin);
	}
}

y = Approch(y,ystart-(pos*margin),max(point_distance(0,y,0,ystart-(pos*margin))/(spd*5),spd));