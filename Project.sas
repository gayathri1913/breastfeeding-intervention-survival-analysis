/*importing the excel file*/ 
proc import
file='/home/u63752988/BS-835/PROJECT/BFStudy.xlsx'
out=BFStudyPRJ
dbms=xlsx replace;
run; 

/*Project Part 1*/
/* Creating descriptive statistics table */
proc means DATA= BFStudyPRJ n mean std min max maxdec=2;
    class InHospInt;
    var mage; 
run;

proc freq data= BFStudyPRJ;
    tables InHospInt*educ 
    InHospInt*employ ;
run; 

/* Creating an unadjusted analysis comparing initiation of 
breastfeeding in the two In Hospital Intervention groups */

proc logistic data=BFStudyPRJ descending;  
class InHospInt (ref="0") / param=ref;
    model BFinit = InHospInt;
run;  

/* Creating an adjusted analysis comparing initiation of 
breastfeeding in the two In Hospital Intervention groups */ 

proc logistic data=BFStudyPRJ descending;  
class InHospInt (ref="0") educ (ref="1") employ (ref="0") / param=ref;
    model BFinit =  InHospInt mage educ employ;
run; 



/*Project Part 2*/ 
/* Creating descriptive statistics table */  
data BFStudyPRJ_initiated;
    set BFStudyPRJ;
    where BFinit = 1;
run; 

proc means DATA= BFStudyPRJ_initiated n mean std min max maxdec=2;
    class  AtHomeInt ;
    var mage ; 
run;  

proc freq data= BFStudyPRJ_initiated; 
    tables AtHomeInt*educ AtHomeInt*employ AtHomeInt*InHospInt ;
run; 
 
/* Creating unadjusted analysis comparing time of 
feeding of breast milk for the two At-Home Intervention groups using survival analysis */ 

proc phreg data = BFStudyPRJ;
class AtHomeInt (ref= '0') / param=ref;
model BFweeks *BFstopby6mo (0) = AtHomeInt  / rl;
run; 

/* Creating adjusted analysis comparing time of 
feeding of breast milk for the two At-Home Intervention groups using survival analysis */
proc phreg data = BFStudyPRJ;
class AtHomeInt (ref= '0') educ (ref="1") employ (ref="0") InHospInt (ref="0")/ param=ref;
model BFweeks *BFstopby6mo (0) = AtHomeInt mage educ employ  InHospInt / rl;
run;  

/*Project Part 3*/  
/*1*/ 
/*Creating an adjusted analysis examining effect modification */ 
proc phreg data = BFStudyPRJ; 
class AtHomeInt (ref= '0') educ (ref="1") employ (ref="0") InHospInt (ref="0")/ param=ref;
model BFweeks *BFstopby6mo (0) =  AtHomeInt InHospInt AtHomeInt*InHospInt mage educ employ / rl; 
run;  

/*2*/ 
/* For Participants Who Received the In-Hospital Intervention */
proc phreg data = BFStudyPRJ; 
    where InHospInt = 1;
    class AtHomeInt (ref="0") educ (ref="1") employ (ref ="0") / param=ref;
    model BFweeks*BFstopby6mo(0) = AtHomeInt mage educ employ / rl; 

/* For Participants Who did not Receive the In-Hospital Intervention */
proc phreg data = BFStudyPRJ; 
    where InHospInt = 0;
    class AtHomeInt (ref="0") educ (ref="1") employ (ref ="0") / param=ref;
    model BFweeks*BFstopby6mo(0) = AtHomeInt mage educ employ / rl;  
    


