module student_marks;

typedef enum int unsigned {
   AATHAM          = 1,
   AISHWARYA       = 2,
   BOOPATHI        = 3,
   DEVAKI          = 4,
   DHANALAKSHMI    = 5,
   DHANASANKAR     = 6,
   DHANUSRI        = 7,
   DHARANEESWARAN  = 8,
   DHIYA           = 9,
   DINESHKUMAR     = 10,
   DIVYA           = 11,
   DIVYADARSHINI   = 12,
   GAYATHRI        = 13,
   GOHUL           = 14,
   GOKULPRASANTH   = 15,
   GOWTHAM         = 16,
   HEMA            = 17,
   JANANI          = 18,
   JESHIGA         = 20,
   KARTHICKRAJ     = 21,
   KARTHIKA        = 22,
   KARTHIKEYAN     = 23,
   KATHIRPERUMAL   = 24,
   KAVIYA          = 25,
   KAVYASHREE      = 26,
   KOKILA          = 27,
   LAVANYA         = 28,
   LUTHDRAN        = 29,
   MANJARI         = 30,
   MANJUDEVI       = 31,
   MITHUN          = 32,
   MONISH          = 33,
   MUTHURAMALINGAM = 34,
   PRABHAGARAN     = 35,
   PREETHA         = 36,
   PREETHIGA       = 37,
   PRIYADARSHINI   = 38,
   SADAIESWARAN    = 39,
   SAHAANA         = 40,
   SARULATHA       = 41,
   SELVARAGAVAN    = 42,
   SENTHAMIL       = 43,
   SHAHANA         = 44,
   SOWMIYA         = 45,
   SRIVATSAN       = 46,
   SUBHASRI        = 47,
   SUGI            = 48,
   SURENDHAR       = 49,
   THANUJKUMAR     = 50,
   THANUSH         = 51,
   THARANI         = 52,
   VISHAL          = 53,
   YASHICA         = 55,
   ABISHIEK        = 56,
   AKASH           = 57,
   ANBURAJ         = 58,
   GOKULNATH       = 59,
   HARIKUMAR       = 60,
   JEEVITHA        = 61,
   MEIYARASAN      = 62,
   SIVABALAN       = 63,
   SHOBANA         = 64,
   MATHIYARASU     = 65,
   MOHANRAJ        = 66,
   SATHISH         = 67,
   MOHAMMAD        = 68
 } student_name_e;
   parameter NO_OF_STUDENTS = 69;

   typedef struct {
      string    student_name;
	  int 	  for_mark;
 	  int 	  pom_mark; 
	  int 	  sa_mark;
	  int 	  hve_mark;
      int 	  attendance_percentage;
   } stu_marks_s;

   stu_marks_s ece2025_student_marks[NO_OF_STUDENTS];
   student_name_e student;
   string student_name_str;
   initial
   begin
      for (int student_roll_no = 0; student_roll_no < NO_OF_STUDENTS; student_roll_no++ )
      begin
         student = student_name_e'(student_roll_no);
         student_name_str = student.name();
    
         ece2025_student_marks[student_roll_no] = '{
                                                    student_name          : student_name_str,      
                                                    for_mark              : $urandom_range(70,100),
                                                    pom_mark              : $urandom_range(80,100),
                                                    hve_mark              : $urandom_range(85,100),
                                                    sa_mark               : $urandom_range(60,100),
                                                    attendance_percentage : $urandom_range(75,100)
                                                   };
         $display("@ %0d ns Value of ECE2025_Student_Marks[%0d] = %p", $time, student_roll_no, ece2025_student_marks[student_roll_no]);
      end
   end
endmodule
