/// @desc
for(var i = 1; i <= string_length(textquestiondraw); i++)
{
	if(string_copy(textquestiondraw, i, 1) != " ")
	{
		textquestiondraw = string_delete(textquestiondraw, i, 1);
		if(irandom(20) == 0)
		{
			textquestiondraw = string_insert(" ",textquestiondraw,i);
		}
		else
		{
			textquestiondraw = string_insert(chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z")))),textquestiondraw,i);
		}
	}
}