///@descInitalizeTestVariables
global.test = 1;

#region Grasslands (1-3)
//1
SetupTestMultipleChoiceSetup(1,1,"Welcome To The Evil Room!","Click OK to Start",2,noone,c_white);
SetupTestMultipleChoice1(1,1,c_red,1,"Not\nOK");
SetupTestMultipleChoice2(1,1,c_green,1,"OK");
#endregion

#region Underground (4-5)
//4
SetupTestMultipleChoiceSetup(2,1,"In the Underground Evil Room, You Must","Count the Apples",3,3,c_white);
SetupTestMultipleChoice1(2,1,c_white,1,"5");
SetupTestMultipleChoice2(2,1,c_white,1,"2");
SetupTestMultipleChoice3(2,1,c_white,1,"3");
SetupTestMultipleChoiceSetup(2,2,"Next, You Must","Count the Cars",1,4,c_white);
SetupTestMultipleChoice1(2,2,c_white,1,"6");
SetupTestMultipleChoice2(2,2,c_white,1,"4");
SetupTestMultipleChoice3(2,2,c_white,1,"8");
#endregion

#region Desert (6-7)
SetupTestWritten(3,1,"To Register with the Evil Room","Please Enter Your Name","Caelan",noone,c_white);
SetupTestWritten(3,2,"Next","Please Enter Your Age","Birthday",noone,c_white);
#endregion