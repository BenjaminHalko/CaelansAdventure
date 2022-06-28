/// @desc
for(var i = 0; i <= totalkeys; i++)
{
	if(keyboard_check_direct(key[i]))
	{
		keyalpha[i] = Approch(keyalpha[i],keytotalalpha,keyalphaspd);
	}
	else
	{
		keyalpha[i] = Approch(keyalpha[i],0,keyalphaspd);
	}
}