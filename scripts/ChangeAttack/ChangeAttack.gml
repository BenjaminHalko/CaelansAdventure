/// @desc ChangeAttack()

instance_create_layer(irandom_range(100,room_width-100),-100,"Heart",oHeart);

if(argument_count != 0)
{
	attack = argument[0];
}
else
{
	attack = irandom(array_length_1d(attackscript)-1);
}

attackphase = 0;
stopattack = false;