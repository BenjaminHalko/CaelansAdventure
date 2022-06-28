/// @desc
event_inherited();

start = false;
activated = false;

phase = 0;

margin = 5;

hp = 15;
hit = false;
allowhit = true;
drawwhite = false;

time = room_speed*2;

explosions = 0;
explosionsmax = 3;

#region Talking Code
talknumber = 3;
starting = true;
active = true;
text[0] = "Ah. So we finally meet!";
text[1] = "They call me...";
text[2] = "The Ninja Cactus!";
text[3] = "Behold my\nSaw-mbreros!";
#endregion