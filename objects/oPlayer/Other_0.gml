/// @desc
if(!instance_exists(oSignPost))
{
	SlideTransistion(TRANS_MODE.GOTO,room);
}
else
{
	if(oSignPost.phase < 1)
	SlideTransistion(TRANS_MODE.GOTO,room);
}