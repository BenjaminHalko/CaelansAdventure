/// @desc
textenergy = "";
if(energychar >= 0)
{
	textenergy = string_copy(energystring,0,energychar);
}

for(var i = 0; i <= 2; i++)
{
	if(string_length(textenergy) < string_length(energystring)) and (string_length(textenergy) <= energychar+3)
	textenergy = textenergy + chr(choose(irandom_range(ord("A"), ord("Z")),irandom_range(ord("a"), ord("z"))));
}

energychar++;