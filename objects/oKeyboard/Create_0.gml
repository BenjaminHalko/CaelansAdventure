/// @desc
enum KEYBOARD
{
	A = 0,
	D = 1,
	S = 2,
	W = 3,
	ESC = 4,
	SHIFTLEFT = 5,
	SPACE = 6,
	SHIFTRIGHT = 7,
	ENTER = 8,
	UP = 9,
	DOWN = 10,
	LEFT = 11,
	RIGHT = 12
}

totalkeys = 12;

key[KEYBOARD.A] = ord("A");
key[KEYBOARD.D] = ord("D");
key[KEYBOARD.S] = ord("S");
key[KEYBOARD.W] = ord("W");
key[KEYBOARD.ESC] = vk_escape;
key[KEYBOARD.SHIFTLEFT] = vk_lshift;
key[KEYBOARD.SPACE] = vk_space;
key[KEYBOARD.SHIFTRIGHT] = vk_rshift;
key[KEYBOARD.ENTER] = vk_enter;
key[KEYBOARD.UP] = vk_up;
key[KEYBOARD.DOWN] = vk_down;
key[KEYBOARD.LEFT] = vk_left;
key[KEYBOARD.RIGHT] = vk_right;

image[KEYBOARD.A] = 0;
image[KEYBOARD.D] = 0;
image[KEYBOARD.S] = 0;
image[KEYBOARD.W] = 0;
image[KEYBOARD.ESC] = 2;
image[KEYBOARD.SHIFTLEFT] = 3;
image[KEYBOARD.SPACE] = 4;
image[KEYBOARD.SHIFTRIGHT] = 3;
image[KEYBOARD.ENTER] = 2;
image[KEYBOARD.UP] = 5;
image[KEYBOARD.DOWN] = 6;
image[KEYBOARD.LEFT] = 0;
image[KEYBOARD.RIGHT] = 0;

keyX[KEYBOARD.A] = 313;
keyX[KEYBOARD.D] = 643;
keyX[KEYBOARD.S] = 478;
keyX[KEYBOARD.W] = 437;
keyX[KEYBOARD.ESC] = 24;
keyX[KEYBOARD.SHIFTLEFT] = 25;
keyX[KEYBOARD.SPACE] = 727;
keyX[KEYBOARD.SHIFTRIGHT] = 2049;
keyX[KEYBOARD.ENTER] = 2132;
keyX[KEYBOARD.UP] = 2091;
keyX[KEYBOARD.DOWN] = 2091;
keyX[KEYBOARD.LEFT] = 1925;
keyX[KEYBOARD.RIGHT] = 2255;

keyY[KEYBOARD.A] = 506;
keyY[KEYBOARD.D] = 506;
keyY[KEYBOARD.S] = 506;
keyY[KEYBOARD.W] = 345;
keyY[KEYBOARD.ESC] = 23;
keyY[KEYBOARD.SHIFTLEFT] = 668;
keyY[KEYBOARD.SPACE] = 829;
keyY[KEYBOARD.SHIFTRIGHT] = 668;
keyY[KEYBOARD.ENTER] = 507;
keyY[KEYBOARD.UP] = 829;
keyY[KEYBOARD.DOWN] = 900;
keyY[KEYBOARD.LEFT] = 828;
keyY[KEYBOARD.RIGHT] = 828;

for(var i = 0; i <= totalkeys; i++)
{
	keyalpha[i] = 0;
}

keyalphaspd = 0.05;
keytotalalpha = 0.8;