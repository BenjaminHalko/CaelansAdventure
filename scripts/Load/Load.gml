/// @desc Load
/// @arg section
/// @arg key
/// @arg default

var _s = argument0;
var _k = argument1;
var _d = argument2;
var _v;

if(_s = "Settings") and (_k != "Autojump") and (_k != "InfiniteJump") and (_k != "UnlockedInfinteJump") var file = Settingfile; else var file = Savefile;

ini_open(file);
if(is_real(_d))
{
	var _v =  ini_read_real(_s,_k,_d);
}
else
{
	var _v = ini_read_string(_s,_k,_d);
}
ini_close();
return _v;