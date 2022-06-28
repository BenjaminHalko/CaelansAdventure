/// @desc
if(song == mHome) or (oGlobalController.song != mSecret)
{
	PlaySong(song,true);
	if(song == mSnowDay) or (song == mSnowNight)
	{
		oPlayer.snow = true;
	}
	else
	{
		oPlayer.snow = false;
	}
}