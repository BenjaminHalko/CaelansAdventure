/// @desc
for(var i = 1; i <= string_length(textdescription); i++)
{
	if(string_copy(textdescription, i, 1) != " ")
	{
		textdescription = string_delete(textdescription, i, 1);
		if(irandom(20) == 0)
		{
			textdescription = string_insert(" ",textdescription,i);
		}
		else
		{
			textdescription = string_insert(chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z")))),textdescription,i);
		}
	}
}

for(var i = 1; i <= string_length(textsecondline); i++)
{
	if(string_copy(textsecondline, i, 1) != " ")
	{
		textsecondline = string_delete(textsecondline, i, 1);
		if(irandom(20) == 0)
		{
			textsecondline = string_insert(" ",textsecondline,i);
		}
		else
		{
			textsecondline = string_insert(chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z")))),textsecondline,i);
		}
	}
}

if(destroy)
{
	for(var i = 1; i <= string_length(textenergy); i++)
	{
		if(string_copy(textenergy, i, 1) != " ")
		{
			textenergy = string_delete(textenergy, i, 1);
			if(irandom(20) == 0)
			{
				textenergy = string_insert(" ",textenergy,i);
			}
			else
			{
				textenergy = string_insert(chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z")))),textenergy,i);
			}
		}
	}
}