/// @desc Save
/// @arg section
/// @arg key
/// @arg value

var _s = argument0;
var _k = argument1;
var _v = argument2;

if(_s = "Settings") and (_k != "Autojump") and (_k != "InfiniteJump") and (_k != "UnlockedInfinteJump") var file = Settingfile; else var file = Savefile;

ini_open(file);
if(is_real(_v))
{
	ini_write_real(_s,_k,_v);
}
else
{
	ini_write_string(_s,_k,_v);
}
ini_close();