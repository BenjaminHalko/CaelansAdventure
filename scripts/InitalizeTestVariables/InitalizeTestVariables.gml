///@descInitalizeTestVariables
global.test = 1;

#region Grasslands (1-3)
//Day
//1
SetupTestMultipleChoiceSetup(1,1,"Bwa! Ha! Ha! Gotcha!","The Only Way You'll Get Out is to Answer this Question!","Click OK to Destroy the Evil Room",2,noone,c_white);
SetupTestMultipleChoice1(1,1,c_red,1,"Not\nOK");
SetupTestMultipleChoice2(1,1,c_green,1,"OK");

//Night
//2
SetupTestWritten(2,1,"What! You Again?!","You'll Never Answer These Questions About Yourself!","What is your Name?","Caelan",noone,c_white);
SetupTestWritten(2,2,"How did You Know That!?!","","What is your Age?","Birthday",noone,c_white);

//3
SetupTestMultipleChoiceSetup(3,1,"Ha Ha! I Have Really Got You Now!","I Bet You Don't Know About Shapes!","Try Clicking on the Hexagon",2,noone,c_white);
SetupTestMultipleChoice1(3,1,make_colour_rgb(255,161,0),25,"");
SetupTestMultipleChoice2(3,1,make_colour_rgb(255,161,0),26,"");
SetupTestMultipleChoice3(3,1,make_colour_rgb(255,161,0),27,"");
SetupTestMultipleChoiceSetup(3,2,"Aw Man!","OK, How About THIS Shape?","Try Clicking on the Trapezoid",1,noone,c_white);
SetupTestMultipleChoice1(3,2,c_lime,25,"");
SetupTestMultipleChoice2(3,2,c_lime,26,"");
SetupTestMultipleChoice3(3,2,c_lime,27,"");
SetupTestMultipleChoiceSetup(3,3,"You Can't Know This One?","","Try Clicking on the Octagon",3,noone,c_white);
SetupTestMultipleChoice1(3,3,c_fuchsia,25,"");
SetupTestMultipleChoice2(3,3,c_fuchsia,26,"");
SetupTestMultipleChoice3(3,3,c_fuchsia,27,"");
SetupTestWritten(3,4,"You Can't DESTROY Me!","Do Whatever You Want.","Just Don't Type the Word \"Destroy\"","Destroy",noone,c_blue);
#endregion

#region Underground (4-5)
//4
SetupTestMultipleChoiceSetup(4,1,"You sure are Lucky.","I Bet You Don't Know How to Count.","Try Counting the Apples",3,3,c_white);
SetupTestMultipleChoice1(4,1,c_white,1,"5");
SetupTestMultipleChoice2(4,1,c_white,1,"2");
SetupTestMultipleChoice3(4,1,c_white,1,"3");
SetupTestMultipleChoiceSetup(4,2,"You Know Your Apples.","","Try Counting the Cars",1,4,c_white);
SetupTestMultipleChoice1(4,2,c_white,1,"6");
SetupTestMultipleChoice2(4,2,c_white,1,"4");
SetupTestMultipleChoice3(4,2,c_white,1,"8");

SetupTestMultipleChoiceSetup(5,1,"Oh, You Want to Count some more?","","How many Pictures are Blue?",2,5,c_white);
SetupTestMultipleChoice1(5,1,c_white,1,"3");
SetupTestMultipleChoice2(5,1,c_white,1,"4");
SetupTestMultipleChoice3(5,1,c_white,1,"5");
SetupTestMultipleChoiceSetup(5,2,"Oh, I Thought There Were 6!","How About Red Things?","How many Pictures are Red?",3,5,c_white);
SetupTestMultipleChoice1(5,2,c_white,1,"3");
SetupTestMultipleChoice2(5,2,c_white,1,"4");
SetupTestMultipleChoice3(5,2,c_white,1,"5");
SetupTestMultipleChoiceSetup(5,3,"MATH!!!","","What is 4 + 5?",2,noone,c_white);
SetupTestMultipleChoice1(5,3,c_white,1,"8");
SetupTestMultipleChoice2(5,3,c_white,1,"9");
SetupTestMultipleChoice3(5,3,c_white,1,"10");
SetupTestMultipleChoiceSetup(5,4,"ALL of them!?!","","How many Pictures all Together?",2,5,c_white);
SetupTestMultipleChoice1(5,4,c_white,1,"8");
SetupTestMultipleChoice2(5,4,c_white,1,"9");
SetupTestMultipleChoice3(5,4,c_white,1,"10");
#endregion

#region Desert (6-7)
//6
SetupWheresWaldo(6,1,"I Have Hidden Stuff!","","Try Finding the Lost Red Triangle");
SetupWheresWaldo(6,2,"You Found That Too Quickly!","I Have Turned Everything Red!","NOW Try Finding that Red Triangle");

//7
SetupWheresWaldo(7,1,"I Have Hidden More Stuff!","","Try Finding the Four-Leaf Clover");
SetupWheresWaldo(7,2,"Too Easy!","","NOW Try Finding the Four-Leaf Clover");
SetupWheresWaldo(7,3,"D'oh!","","How about NOW?!");
SetupWheresWaldo(7,4,"Impossible!","The Clover Patch is at Maxium Overload!!!","You can't Possibly Find it Now!");
#endregion

#region Snow (8-9)
//8
SetupTestMusic(8,1,"I Hate Christmas!","Try Playing this Song:","Jingle Bells","Jingle Bells");

//9
SetupTestMusic(9,1,"I Love EVIL CHRIS-mas","Try Playing this Song:","We wish you a Merry Christmas","Merry Christmas");
#endregion

#region Forest (10-11)
//10
SetupTestMultipleChoiceSetup(10,1,"You Again!","Do you Know Anything About Plants?!","What does a plant need to grow?",2,7,c_white);
SetupTestMultipleChoice1(10,1,c_white,8,"");
SetupTestMultipleChoice2(10,1,c_white,9,"");
SetupTestMultipleChoice3(10,1,c_white,10,"");
SetupTestMultipleChoice4(10,1,c_white,11,"");
SetupTestMultipleChoiceSetup(10,2,"Argh!","","Where does a plant need to grow?",1,7,c_white);
SetupTestMultipleChoice1(10,2,c_white,12,"Soil");
SetupTestMultipleChoice2(10,2,c_white,13,"Snow");
SetupTestMultipleChoice3(10,2,c_white,14,"Lava");
SetupTestMultipleChoice4(10,2,c_white,15,"Stone");

//11
SetupTestWritten(11,1,"I Hate Plants!","I Bet You Don't Know Much About Nature!","What is this?","Sun",28,c_white);
SetupTestWritten(11,2,"How did You Know That!?!","","OK, What's this?","Water",29,c_white);
SetupTestWritten(11,3,"Impossible!","","How About this One?","Plant",7,c_white);
#endregion

#region Haunted House (12-15)
//12
SetupTestMultipleChoiceSetup(12,1,"Time for Scary Colours!","Do You Know how to Combine Colours?","What does Red + Yellow Equal?",1,16,c_white);
SetupTestMultipleChoice1(12,1,make_colour_rgb(255,161,0),1,"Orange");
SetupTestMultipleChoice2(12,1,c_green,1,"Green");
SetupTestMultipleChoice3(12,1,c_purple,1,"Purple");

SetupTestMultipleChoiceSetup(12,2,"Orange is the Colour Of Pumpkins!","(Pumpkins are Scary!)","What does Yellow + Blue Equal?",2,18,c_white);
SetupTestMultipleChoice1(12,2,make_colour_rgb(255,161,0),1,"Orange");
SetupTestMultipleChoice2(12,2,c_green,1,"Green");
SetupTestMultipleChoice3(12,2,c_purple,1,"Purple");

SetupTestMultipleChoiceSetup(12,3,"Witches are Green!","(Witches are Also Very Scary!)","What does Red + Blue Equal?",3,17,c_white);
SetupTestMultipleChoice1(12,3,make_colour_rgb(255,161,0),1,"Orange");
SetupTestMultipleChoice2(12,3,c_green,1,"Green");
SetupTestMultipleChoice3(12,3,c_purple,1,"Purple");

//13
SetupTestMultipleChoiceSetup(13,1,"Tertiary Colours are too Hard for You!","","What does Blue + Purple Equal?",6,19,c_white);
SetupTestMultipleChoice1(13,1,make_color_rgb(255,0,127.5),1,"Magenta");
SetupTestMultipleChoice2(13,1,make_color_rgb(255,67.5,0),1,"Vermillion");
SetupTestMultipleChoice3(13,1,make_color_rgb(255,191.25,0),1,"Marigold");
SetupTestMultipleChoice4(13,1,make_color_rgb(63.75,255,0),1,"Chartreuse");
SetupTestMultipleChoice5(13,1,make_color_rgb(0,255,255),1,"Cyan");
SetupTestMultipleChoice6(13,1,make_color_rgb(127.5,0,255),1,"Violet");

SetupTestMultipleChoiceSetup(13,2,"Aren't You Scared?","","What does Orange + Yellow Equal?",3,20,c_white);
SetupTestMultipleChoice1(13,2,make_color_rgb(255,0,127.5),1,"Magenta");
SetupTestMultipleChoice2(13,2,make_color_rgb(255,67.5,0),1,"Vermillion");
SetupTestMultipleChoice3(13,2,make_color_rgb(255,191.25,0),1,"Marigold");
SetupTestMultipleChoice4(13,2,make_color_rgb(63.75,255,0),1,"Chartreuse");
SetupTestMultipleChoice5(13,2,make_color_rgb(0,255,255),1,"Cyan");
SetupTestMultipleChoice6(13,2,make_color_rgb(127.5,0,255),1,"Violet");

SetupTestMultipleChoiceSetup(13,3,"I am Often Very Scared of Colours Myself!","","What does Red + Purple Equal?",1,21,c_white);
SetupTestMultipleChoice1(13,3,make_color_rgb(255,0,127.5),1,"Magenta");
SetupTestMultipleChoice2(13,3,make_color_rgb(255,67.5,0),1,"Vermillion");
SetupTestMultipleChoice3(13,3,make_color_rgb(255,191.25,0),1,"Marigold");
SetupTestMultipleChoice4(13,3,make_color_rgb(63.75,255,0),1,"Chartreuse");
SetupTestMultipleChoice5(13,3,make_color_rgb(0,255,255),1,"Cyan");
SetupTestMultipleChoice6(13,3,make_color_rgb(127.5,0,255),1,"Violet");

SetupTestMultipleChoiceSetup(13,4,"Your Nightmares Will Be Full of Evil Colours!!!","","What does Yellow + Green Equal?",4,22,c_white);
SetupTestMultipleChoice1(13,4,make_color_rgb(255,0,127.5),1,"Magenta");
SetupTestMultipleChoice2(13,4,make_color_rgb(255,67.5,0),1,"Vermillion");
SetupTestMultipleChoice3(13,4,make_color_rgb(255,191.25,0),1,"Marigold");
SetupTestMultipleChoice4(13,4,make_color_rgb(63.75,255,0),1,"Chartreuse");
SetupTestMultipleChoice5(13,4,make_color_rgb(0,255,255),1,"Cyan");
SetupTestMultipleChoice6(13,4,make_color_rgb(127.5,0,255),1,"Violet");

SetupTestMultipleChoiceSetup(13,5,"I Think I will Dress Up as a Colour for Halloween!","(Because Colours are Very Scary)","What does Red + Orange Equal?",2,23,c_white);
SetupTestMultipleChoice1(13,5,make_color_rgb(255,0,127.5),1,"Magenta");
SetupTestMultipleChoice2(13,5,make_color_rgb(255,67.5,0),1,"Vermillion");
SetupTestMultipleChoice3(13,5,make_color_rgb(255,191.25,0),1,"Marigold");
SetupTestMultipleChoice4(13,5,make_color_rgb(63.75,255,0),1,"Chartreuse");
SetupTestMultipleChoice5(13,5,make_color_rgb(0,255,255),1,"Cyan");
SetupTestMultipleChoice6(13,5,make_color_rgb(127.5,0,255),1,"Violet");

SetupTestMultipleChoiceSetup(13,6,"You are Too Good At This!","","What does Green + Blue Equal?",5,24,c_white);
SetupTestMultipleChoice1(13,6,make_color_rgb(255,0,127.5),1,"Magenta");
SetupTestMultipleChoice2(13,6,make_color_rgb(255,67.5,0),1,"Vermillion");
SetupTestMultipleChoice3(13,6,make_color_rgb(255,191.25,0),1,"Marigold");
SetupTestMultipleChoice4(13,6,make_color_rgb(63.75,255,0),1,"Chartreuse");
SetupTestMultipleChoice5(13,6,make_color_rgb(0,255,255),1,"Cyan");
SetupTestMultipleChoice6(13,6,make_color_rgb(127.5,0,255),1,"Violet");

//14
SetupTestWritten(14,1,"It is a Very Scary Night!","Now We Will See How Well You can Spell Colours!","Try Naming this Colour!","Blue",1,c_blue);
SetupTestWritten(14,2,"Spelling is Scary!","","Try Naming this Colour!","Yellow",1,c_yellow);
SetupTestWritten(14,3,"Evil Spelling!","","Try Naming this Colour!","Green",1,c_green);
SetupTestWritten(14,4,"The Spelling Monster is Going to Get You!!!","","Try Naming this Colour!","Purple",1,c_purple);
SetupTestWritten(14,5,"Beware!!!","","Try Naming this Colour!","Red",1,c_red);
SetupTestWritten(14,6,"The Spelling Monster is Very Evil!!!","","Try Naming this Colour!","Orange",1,make_colour_rgb(255,161,0));

//15
SetupTestWritten(15,1,"EVIL TERTIARY!!!","","What Do These Two Colours Make?","Violet",19,c_white);
SetupTestWritten(15,2,"Tertiary Colours are the Scariest Colours!","","What Do These Two Colours Make?","Marigold",20,c_white);
SetupTestWritten(15,3,"Why Aren't You Scared of These Colours!","","What Do These Two Colours Make?","Magenta",21,c_white);
SetupTestWritten(15,4,"You are Unscareable!","","What Do These Two Colours Make?","Cyan",24,c_white);
#endregion

#region Airship (16-20)
//16
SetupTestMultipleChoiceSetupSound(16,1,"Listen Closely!","Dogs and Cats Sound Different!","Which Animal Makes this Noise?",3,noone,c_white,snDog);
SetupTestMultipleChoice1(16,1,c_white,0,"Cow");
SetupTestMultipleChoice2(16,1,c_white,0,"Cat");
SetupTestMultipleChoice3(16,1,c_white,0,"Dog");
SetupTestMultipleChoice4(16,1,c_white,0,"Turtle");
SetupTestMultipleChoice5(16,1,c_white,0,"Fish");
SetupTestMultipleChoiceSetupSound(16,2,"I Wonder if Evil Rooms Can Have Pets?","I want a Pet Monkey!","Which Animal Makes this Noise?",2,noone,c_white,snCat);
SetupTestMultipleChoice1(16,2,c_white,0,"Cow");
SetupTestMultipleChoice2(16,2,c_white,0,"Cat");
SetupTestMultipleChoice3(16,2,c_white,0,"Dog");
SetupTestMultipleChoice4(16,2,c_white,0,"Turtle");
SetupTestMultipleChoice5(16,2,c_white,0,"Fish");

//17
SetupTestMultipleChoiceSetupSound(17,1,"Farm Animals make Sounds too!","Do Monkeys Live On Farms?","Which Animal Makes this Noise?",4,noone,c_white,snPig);
SetupTestMultipleChoice1(17,1,c_white,0,"Cow");
SetupTestMultipleChoice2(17,1,c_white,0,"Horse");
SetupTestMultipleChoice3(17,1,c_white,0,"Bird");
SetupTestMultipleChoice4(17,1,c_white,0,"Pig");
SetupTestMultipleChoice5(17,1,c_white,0,"Chicken");
SetupTestMultipleChoiceSetupSound(17,2,"I don't Think Monkeys Live On Farms!","","Which Animal Makes this Noise?",1,noone,c_white,snCow);
SetupTestMultipleChoice1(17,2,c_white,0,"Cow");
SetupTestMultipleChoice2(17,2,c_white,0,"Horse");
SetupTestMultipleChoice3(17,2,c_white,0,"Bird");
SetupTestMultipleChoice4(17,2,c_white,0,"Pig");
SetupTestMultipleChoice5(17,2,c_white,0,"Chicken");
SetupTestMultipleChoiceSetupSound(17,3,"If Monkeys don't Live on a Farm, where do they live?","","Which Animal Makes this Noise?",3,noone,c_white,snBird);
SetupTestMultipleChoice1(17,3,c_white,0,"Cow");
SetupTestMultipleChoice2(17,3,c_white,0,"Horse");
SetupTestMultipleChoice3(17,3,c_white,0,"Bird");
SetupTestMultipleChoice4(17,3,c_white,0,"Pig");
SetupTestMultipleChoice5(17,3,c_white,0,"Chicken");
SetupTestMultipleChoiceSetupSound(17,4,"Do Monkeys Live At All?!","","Which Animal Makes this Noise?",5,noone,c_white,snChicken);
SetupTestMultipleChoice1(17,4,c_white,0,"Cow");
SetupTestMultipleChoice2(17,4,c_white,0,"Horse");
SetupTestMultipleChoice3(17,4,c_white,0,"Bird");
SetupTestMultipleChoice4(17,4,c_white,0,"Pig");
SetupTestMultipleChoice5(17,4,c_white,0,"Chicken");
SetupTestMultipleChoiceSetupSound(17,5,"Are Monkeys Just a Figment of Our Imagination?","","Which Animal Makes this Noise?",2,noone,c_white,snHorse);
SetupTestMultipleChoice1(17,5,c_white,0,"Cow");
SetupTestMultipleChoice2(17,5,c_white,0,"Horse");
SetupTestMultipleChoice3(17,5,c_white,0,"Bird");
SetupTestMultipleChoice4(17,5,c_white,0,"Pig");
SetupTestMultipleChoice5(17,5,c_white,0,"Chicken");

//23
SetupTestMultipleChoiceSetupSound(18,1,"It's Time for City Sounds!","Monkeys Should Be Allowed To Drive Cars.","What makes this Noise?",1,noone,c_white,snCar);
SetupTestMultipleChoice1(18,1,c_white,0,"Car");
SetupTestMultipleChoice2(18,1,c_white,0,"People");
SetupTestMultipleChoice3(18,1,c_white,0,"Truck");
SetupTestMultipleChoice4(18,1,c_white,0,"Train");
SetupTestMultipleChoice5(18,1,c_white,0,"Bicycle");
SetupTestMultipleChoiceSetupSound(18,2,"I think Cars are Too Loud!","They Disturb My Peace and Quiet... and Evilness!","What makes this Noise?",3,noone,c_white,snTruck);
SetupTestMultipleChoice1(18,2,c_white,0,"Car");
SetupTestMultipleChoice2(18,2,c_white,0,"People");
SetupTestMultipleChoice3(18,2,c_white,0,"Truck");
SetupTestMultipleChoice4(18,2,c_white,0,"Train");
SetupTestMultipleChoice5(18,2,c_white,0,"Bicycle");
SetupTestMultipleChoiceSetupSound(18,3,"Trucks are Still Too Loud!!!","","What makes this Noise?",5,noone,c_white,snBicycle);
SetupTestMultipleChoice1(18,3,c_white,0,"Car");
SetupTestMultipleChoice2(18,3,c_white,0,"People");
SetupTestMultipleChoice3(18,3,c_white,0,"Truck");
SetupTestMultipleChoice4(18,3,c_white,0,"Train");
SetupTestMultipleChoice5(18,3,c_white,0,"Bicycle");
SetupTestMultipleChoiceSetupSound(18,4,"Bicycles are Nice and Quiet!!!","","What makes this Noise?",4,noone,c_white,snTrain);
SetupTestMultipleChoice1(18,4,c_white,0,"Car");
SetupTestMultipleChoice2(18,4,c_white,0,"People");
SetupTestMultipleChoice3(18,4,c_white,0,"Truck");
SetupTestMultipleChoice4(18,4,c_white,0,"Train");
SetupTestMultipleChoice5(18,4,c_white,0,"Bicycle");
SetupTestMultipleChoiceSetupSound(18,5,"NOOO!!! Trains are the Opposite of Bicycles!!!","I had Something that was Quiet, but the Train ruined it!","What makes this Noise?",2,noone,c_white,snPeople);
SetupTestMultipleChoice1(18,5,c_white,0,"Car");
SetupTestMultipleChoice2(18,5,c_white,0,"People");
SetupTestMultipleChoice3(18,5,c_white,0,"Truck");
SetupTestMultipleChoice4(18,5,c_white,0,"Train");
SetupTestMultipleChoice5(18,5,c_white,0,"Bicycle");

//19
SetupTestMultipleChoiceSetupSound(19,1,"I bet you don't Remember where these Songs come from!","","Where does this Sound come from?",3,noone,c_white,mDesertNight);
SetupTestMultipleChoice1(19,1,c_white,59,"");
SetupTestMultipleChoice2(19,1,c_white,60,"");
SetupTestMultipleChoice3(19,1,c_white,61,"");
SetupTestMultipleChoice4(19,1,c_white,62,"");
SetupTestMultipleChoice5(19,1,c_white,63,"");
SetupTestMultipleChoice6(19,1,c_white,64,"");
SetupTestMultipleChoiceSetupSound(19,2,"I am Good Friends with the Ninja Cactus!","","Where does this Sound come from?",5,noone,c_white,mForestNight);
SetupTestMultipleChoice1(19,2,c_white,59,"");
SetupTestMultipleChoice2(19,2,c_white,60,"");
SetupTestMultipleChoice3(19,2,c_white,61,"");
SetupTestMultipleChoice4(19,2,c_white,62,"");
SetupTestMultipleChoice5(19,2,c_white,63,"");
SetupTestMultipleChoice6(19,2,c_white,64,"");
SetupTestMultipleChoiceSetupSound(19,3,"Swimming is Evil!","","Where does this Sound come from?",2,noone,c_white,mUndergroundNight);
SetupTestMultipleChoice1(19,3,c_white,59,"");
SetupTestMultipleChoice2(19,3,c_white,60,"");
SetupTestMultipleChoice3(19,3,c_white,61,"");
SetupTestMultipleChoice4(19,3,c_white,62,"");
SetupTestMultipleChoice5(19,3,c_white,63,"");
SetupTestMultipleChoice6(19,3,c_white,64,"");
SetupTestMultipleChoiceSetupSound(19,4,"I Used to Work for the Underground Mining Corp!","","Where does this Sound come from?",4,noone,c_white,mSnowNight);
SetupTestMultipleChoice1(19,4,c_white,59,"");
SetupTestMultipleChoice2(19,4,c_white,60,"");
SetupTestMultipleChoice3(19,4,c_white,61,"");
SetupTestMultipleChoice4(19,4,c_white,62,"");
SetupTestMultipleChoice5(19,4,c_white,63,"");
SetupTestMultipleChoice6(19,4,c_white,64,"");
SetupTestMultipleChoiceSetupSound(19,5,"Snow is Evil!","Snow Brings too Much Fun!","Where does this Sound come from?",1,noone,c_white,mGrasslandsNight);
SetupTestMultipleChoice1(19,5,c_white,59,"");
SetupTestMultipleChoice2(19,5,c_white,60,"");
SetupTestMultipleChoice3(19,5,c_white,61,"");
SetupTestMultipleChoice4(19,5,c_white,62,"");
SetupTestMultipleChoice5(19,5,c_white,63,"");
SetupTestMultipleChoice6(19,5,c_white,64,"");
SetupTestMultipleChoiceSetupSound(19,6,"There is Not Enough Evil in Grasslands!","","Where does this Sound come from?",6,noone,c_white,mHauntedHouseNight);
SetupTestMultipleChoice1(19,6,c_white,59,"");
SetupTestMultipleChoice2(19,6,c_white,60,"");
SetupTestMultipleChoice3(19,6,c_white,61,"");
SetupTestMultipleChoice4(19,6,c_white,62,"");
SetupTestMultipleChoice5(19,6,c_white,63,"");
SetupTestMultipleChoice6(19,6,c_white,64,"");


//20
SetupTestMultipleChoiceSetupSound(20,1,"Look!!! It's Evil Chris!!! :)","Do you know who Those Other People Are?","Who is This?",1,noone,c_white,vVaneesaHome1);
SetupTestMultipleChoice1(20,1,c_white,33,"");
SetupTestMultipleChoice2(20,1,c_white,34,"");
SetupTestMultipleChoice3(20,1,c_white,35,"");

SetupTestMultipleChoiceSetupSound(20,2,"Evil Chris is Soooo Awsome!!!","","Who is This?",3,noone,c_white,vEvilChrisForestNight4);
SetupTestMultipleChoice1(20,2,c_white,33,"");
SetupTestMultipleChoice2(20,2,c_white,34,"");
SetupTestMultipleChoice3(20,2,c_white,35,"");

SetupTestMultipleChoiceSetupSound(20,3,"I Love Evil Chris!!!","","Who is This?",2,noone,c_white,vSignGrasslandsDay3);
SetupTestMultipleChoice1(20,3,c_white,33,"");
SetupTestMultipleChoice2(20,3,c_white,34,"");
SetupTestMultipleChoice3(20,3,c_white,35,"");

SetupTestMultipleChoiceSetupSound(20,4,"We Need More Evil Chris!!!","","Who is This?",2,noone,c_white,vSignDesertDay1);
SetupTestMultipleChoice1(20,4,c_white,33,"");
SetupTestMultipleChoice2(20,4,c_white,34,"");
SetupTestMultipleChoice3(20,4,c_white,35,"");

SetupTestMultipleChoiceSetupSound(20,5,"Evil Chris is The Best!","","Who is This?",3,noone,c_white,vEvilChrisSnowNight1);
SetupTestMultipleChoice1(20,5,c_white,33,"");
SetupTestMultipleChoice2(20,5,c_white,34,"");
SetupTestMultipleChoice3(20,5,c_white,35,"");
#endregion

#region Castle (21-25)
//21
SetupTestMultipleChoiceSetup(21,1,"Who Dares Go Along the Secret Path!?!","...Oh, it's you.","Solve the Pattern!",4,40,c_white);
SetupTestMultipleChoice1(21,1,c_white,36,"");
SetupTestMultipleChoice2(21,1,c_white,37,"");
SetupTestMultipleChoice3(21,1,c_white,38,"");
SetupTestMultipleChoice4(21,1,c_white,39,"");

SetupTestMultipleChoiceSetup(21,2,"You're so Bad at This!","","Solve this Pattern",1,41,c_white);
SetupTestMultipleChoice1(21,2,c_white,38,"");
SetupTestMultipleChoice2(21,2,c_white,36,"");
SetupTestMultipleChoice3(21,2,c_white,39,"");
SetupTestMultipleChoice4(21,2,c_white,37,"");

//22
SetupTestMultipleChoiceSetup(22,1,"I See You are Back for More!!!","Here is a Harder Pattern!","Solve the Pattern!",4,42,c_white);
SetupTestMultipleChoice1(22,1,c_white,36,"");
SetupTestMultipleChoice2(22,1,c_white,37,"");
SetupTestMultipleChoice3(22,1,c_white,38,"");
SetupTestMultipleChoice4(22,1,c_white,39,"");

SetupTestMultipleChoiceSetup(22,2,"The More Patterns, the Better!","","Solve the Pattern!",2,43,c_white);
SetupTestMultipleChoice1(22,2,c_white,39,"");
SetupTestMultipleChoice2(22,2,c_white,38,"");
SetupTestMultipleChoice3(22,2,c_white,36,"");
SetupTestMultipleChoice4(22,2,c_white,37,"");

SetupTestMultipleChoiceSetup(22,3,"Stop Answering Correctly!","","Solve the Pattern!",3,44,c_white);
SetupTestMultipleChoice1(22,3,c_white,39,"");
SetupTestMultipleChoice2(22,3,c_white,38,"");
SetupTestMultipleChoice3(22,3,c_white,37,"");
SetupTestMultipleChoice4(22,3,c_white,36,"");

//23
SetupTestMultipleChoiceSetup(23,1,"You have fallen into my TRAP-ezoid","","Pattern Time!",3,49,c_white);
SetupTestMultipleChoice1(23,1,c_white,45,"");
SetupTestMultipleChoice2(23,1,c_white,46,"");
SetupTestMultipleChoice3(23,1,c_white,47,"");
SetupTestMultipleChoice4(23,1,c_white,48,"");

SetupTestMultipleChoiceSetup(23,2,"The Trapezoids Aren't Working!","","More Patterns!",4,50,c_white);
SetupTestMultipleChoice1(23,2,c_white,45,"");
SetupTestMultipleChoice2(23,2,c_white,46,"");
SetupTestMultipleChoice3(23,2,c_white,47,"");
SetupTestMultipleChoice4(23,2,c_white,48,"");

SetupTestMultipleChoiceSetup(23,3,"Don't Fail Me Now Trapezoids!","","Evil Patterns!",2,51,c_white);
SetupTestMultipleChoice1(23,3,c_white,45,"");
SetupTestMultipleChoice2(23,3,c_white,46,"");
SetupTestMultipleChoice3(23,3,c_white,47,"");
SetupTestMultipleChoice4(23,3,c_white,48,"");

//24
SetupTestMultipleChoiceSetup(24,1,"Ultiment Pattern Time!","","Very Evil Patterns!",4,52,c_white);
SetupTestMultipleChoice1(24,1,c_white,38,"");
SetupTestMultipleChoice2(24,1,c_white,45,"");
SetupTestMultipleChoice3(24,1,c_white,46,"");
SetupTestMultipleChoice4(24,1,c_white,47,"");
SetupTestMultipleChoice5(24,1,c_white,48,"");
SetupTestMultipleChoice6(24,1,c_white,39,"");

//25
SetupTestWritten(25,1,"Totally Most Evil Pattern Ever!","","I bet you can't Figure out who is Missing?","Annara",53,c_white);
SetupTestWritten(25,2,"You will Never Solve This!!!","","Solve the Pattern!","Red Square",54,c_white);
#endregion

#region Final Boss (26-34)
//26
SetupTestWritten(26,1,"This is the Final Showdown!","","I Bet you can't Name this Shape!","Square",0,c_yellow);
SetupTestWritten(26,2,"You will Never Beat Me!","","I Bet you can't Name this Shape!","Circle",1,c_red);
SetupTestWritten(26,3,"IMPOSSIBLE!!!","","I Bet you can't Name this Shape!","Triangle",2,c_blue);
SetupTestWritten(26,4,"How can This Be?!?","","I Bet you can't Name this Shape!","Hexagon",26,make_colour_rgb(255,161,0));
SetupTestWritten(26,5,"Stop Winning!","","I Bet you can't Name this Shape!","Trapezoid",25,c_fuchsia);
SetupTestWritten(26,6,"Once Again, the Trapezoids have Failed Me!","","I Bet you can't Name this Shape!","Octagon",27,c_lime);

//27
SetupTestMultipleChoiceSetupSound(27,1,"Time for you to hear Really Evil Sounds!","","You will Never Guess Where this Music Comes From!",4,noone,c_white,snCity);
SetupTestMultipleChoice1(27,1,c_white,0,"Beach");
SetupTestMultipleChoice2(27,1,c_white,0,"Space");
SetupTestMultipleChoice3(27,1,c_white,0,"Jungle");
SetupTestMultipleChoice4(27,1,c_white,0,"City");
SetupTestMultipleChoice5(27,1,c_white,0,"Arctic");
SetupTestMultipleChoiceSetupSound(27,2,"Evil Ukulele Music!","","You will Never Guess Where this Music Comes From!",1,noone,c_white,snBeach);
SetupTestMultipleChoice1(27,2,c_white,0,"Beach");
SetupTestMultipleChoice2(27,2,c_white,0,"Space");
SetupTestMultipleChoice3(27,2,c_white,0,"Jungle");
SetupTestMultipleChoice4(27,2,c_white,0,"City");
SetupTestMultipleChoice5(27,2,c_white,0,"Arctic");
SetupTestMultipleChoiceSetupSound(27,3,"Hear the Sounds of DOOM!!!","","You will Never Guess Where this Music Comes From!",2,noone,c_white,snSpace);
SetupTestMultipleChoice1(27,3,c_white,0,"Beach");
SetupTestMultipleChoice2(27,3,c_white,0,"Space");
SetupTestMultipleChoice3(27,3,c_white,0,"Jungle");
SetupTestMultipleChoice4(27,3,c_white,0,"City");
SetupTestMultipleChoice5(27,3,c_white,0,"Arctic");
SetupTestMultipleChoiceSetupSound(27,4,"Listen to the Evil!","","You will Never Guess Where this Music Comes From!",3,noone,c_white,snJungle);
SetupTestMultipleChoice1(27,4,c_white,0,"Beach");
SetupTestMultipleChoice2(27,4,c_white,0,"Space");
SetupTestMultipleChoice3(27,4,c_white,0,"Jungle");
SetupTestMultipleChoice4(27,4,c_white,0,"City");
SetupTestMultipleChoice5(27,4,c_white,0,"Arctic");
SetupTestMultipleChoiceSetupSound(27,5,"Your Ears are Too Powerful!!!","","You will Never Guess Where this Music Comes From!",5,noone,c_white,snColdLand);
SetupTestMultipleChoice1(27,5,c_white,0,"Beach");
SetupTestMultipleChoice2(27,5,c_white,0,"Space");
SetupTestMultipleChoice3(27,5,c_white,0,"Jungle");
SetupTestMultipleChoice4(27,5,c_white,0,"City");
SetupTestMultipleChoice5(27,5,c_white,0,"Arctic");

//28
SetupTestWritten(28,1,"The Colours have Come Back to Haunt You!","I Bet You Don't Know What Colour is...","...a Little More Red than Orange!","Vermillion",23,c_white);
SetupTestWritten(28,2,"Scary Colours of DOOM!!!","I Bet You Don't Know What Colour is...","...a Little More Yellow than Green!","Chartreuse",22,c_white);

//29
SetupTestWritten(29,1,"AN EVIL PLANT!!!","","What is this?","Tree",32,c_white);
SetupTestWritten(29,2,"MORE EVIL PLANTS!!!","","What is this?","Leaf",30,c_white);
SetupTestWritten(29,3,"THE FINAL EVIL PLANT!!!","","What is this?","Flower",31,c_white);

//30
SetupTestMusic(30,1,"GREATEST THEME EVER!!!","Can You Play this Song:","Main Theme","Title");

//31
SetupWheresWaldo(31,1,"What a Large Crowd!","I think Someone is Hiding in There!","Could it be Annara?");

//32
SetupTestMultipleChoiceSetup(32,1,"Lots of Boxes of Apples!","","How many Apples are there in One Box?",1,65,c_white);
SetupTestMultipleChoice1(32,1,c_white,1,"3");
SetupTestMultipleChoice2(32,1,c_white,1,"4");
SetupTestMultipleChoice3(32,1,c_white,1,"5");
SetupTestMultipleChoiceSetup(32,2,"BOXES OF DOOM!","","How many Boxes are there?",3,65,c_white);
SetupTestMultipleChoice1(32,2,c_white,1,"3");
SetupTestMultipleChoice2(32,2,c_white,1,"4");
SetupTestMultipleChoice3(32,2,c_white,1,"5");
SetupTestMultipleChoiceSetup(32,3,"You will Never Solve This!!!","Math is Too Hard for You!","What is 3+3+3+3+3?",2,noone,c_white);
SetupTestMultipleChoice1(32,3,c_white,1,"33333");
SetupTestMultipleChoice2(32,3,c_white,1,"15");
SetupTestMultipleChoice3(32,3,c_white,1,"9");
SetupTestMultipleChoiceSetup(32,4,"WHY CAN YOU DO MATH???","","How many Apples are there all Together?",2,65,c_white);
SetupTestMultipleChoice1(32,4,c_white,1,"3");
SetupTestMultipleChoice2(32,4,c_white,1,"15");
SetupTestMultipleChoice3(32,4,c_white,1,"5");

//33
SetupTestWritten(33,1,"This is my Last Chance!","HAHAHAHAHAHAHAHAHAHA!!!!!","Which Level Does this Come From?","Grasslands",59,c_white);
SetupTestWritten(33,2,"You will Never Defeat Me!","","Which Level Does this Come From?","Desert",61,c_white);
SetupTestWritten(33,3,"It is Impossible for you to Beat Me!","","Which Level Does this Come From?","Snowy Mountain",62,c_white);
SetupTestWritten(33,4,"Hmm,","You are not losing as Much as I thought you would!","Which Level Does this Come From?","Forest",63,c_white);
SetupTestWritten(33,5,"This may be a Problem!","","Which Level Does this Come From?","Haunted House",64,c_white);
SetupTestWritten(33,6,"OH NO!","This isn't Working!","Which Level Does this Come From?","Castle",66,c_white);
SetupTestWritten(33,7,"Time to Switch Stratagies!","Nothing can Stop Me Now!","Which Level Does this Come From?","Forest",67,c_white);
SetupTestWritten(33,8,"How is this Possible!?!","","Which Level Does this Come From?","Haunted House",68,c_white);
SetupTestWritten(33,9,"There is No Way You Are Solveing All These Questions!","","Which Level Does this Come From?","Snowy Mountain",69,c_white);
SetupTestWritten(33,10,"I am Starting to Get Worried!","","Which Level Does this Come From?","Desert",70,c_white);
SetupTestWritten(33,11,"ERROR! ERROR!","","Which Level Does this Come From?","Underground",71,c_white);
SetupTestWritten(33,12,"NO! NO! NO!","This Still isn't Working!","Which Level Does this Come From?","Airship",72,c_white);
SetupTestWritten(33,13,"Evil Chris! Lend Me your Power!","MWA HA HA HA HA!","Which Level Does this Come From?","Forest",76,c_white);
SetupTestWritten(33,14,"NO! This Can't Be!","","Which Level Does this Come From?","Snowy Mountain",74,c_white);
SetupTestWritten(33,15,"WHY IS THIS HAPPENING TO ME!!!","","Which Level Does this Come From?","Underground",75,c_white);
SetupTestWritten(33,16,"NOOOOOOOOOO!!!!!!","","Which Level Does this Come From?","Grasslands",73,c_white);

//34
SetupTestMultipleChoiceSetup(34,1,"You wilv Nvr Cntever OKfeat E Evil!","~Critical System Error~","Click OK to Destroy the Evil Room",2,noone,c_white);
SetupTestMultipleChoice1(34,1,c_red,1,"Not\nOK");
SetupTestMultipleChoice2(34,1,c_green,1,"OK");
#endregion