/// @desc
if(room == rFinalBossHouse) or (room == rSecret)
{
	SlideTransistion(TRANS_MODE.GOTO,rGrasslands);
	active = true;
}
else if(!global.credits)
{
	if(global.completed)
	SlideTransistion(TRANS_MODE.GOTO,rGrasslands);
	else
	SlideTransistion(TRANS_MODE.GOTO,rTitle);
}