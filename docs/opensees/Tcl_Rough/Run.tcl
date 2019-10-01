wipe;




set A 1;
set B 0;

puts [expr !($A&&$B)]
















if 0 {
proc RandomValueGenerator { MinValue MaxValue} {
    set RandValue [expr $MinValue + rand()*($MaxValue - $MinValue)];
	return $RandValue;
}


puts [RandomValueGenerator -10 -10.5];
puts [RandomValueGenerator  0.1 0.2];
puts [RandomValueGenerator  10 -10.5];

}





if 0 {

set A "10 2 10 3 4 5 3 2 44";

set A_Length [llength $A];

puts "A_Length = $A_Length \n"

for {set i 0} {$i < $A_Length} {incr i 1} {
	
	set A_i [lindex $A $i];

	puts "A_i = $A_i \n"

}

# foreach i $A j $A {
	


	# puts "i = $i \t j = $j \n"

# }



}

















# ########################################################################################
# Arrays Start
# ########################################################################################
# set Ass_Array(Age) 1;
# set Ass_Array(Height) 1.5;
# set Ass_Array(1) [expr 2.0/3.0]; # Index ID can also be a number
# set Ass_Array(3.5) [expr 10/5]; # Index ID can also be a number
# set Ass_Array(Name) My_Name; # No Spaces
# set Ass_Array(Full_Name) "My Full Name"; 

# set A [array names Ass_Array]; # or simply use
# puts $A

# foreach index_ids [array names Ass_Array] {
   # puts "Ass_Array($index_ids): $Ass_Array($index_ids)"
# }

if 0 {

array set days {
    1 Monday
    2 Tuesday
    3 Wednesday
    4 Thursday
    5 Friday
    6 Saturday
    7 Sunday
}

set n [array size days]

puts $days(3)
puts "array has $n elements"

}

# ########################################################################################
# Arrays End
# ########################################################################################
# ########################################################################################
# Procs Start
# ########################################################################################

if 0 {

proc CalculateMean { InputData } { ;# Input Arguments
   set Sum 0;
   foreach InputData_i $InputData {
	 set Sum [expr $Sum + $InputData_i]
   }
   set Mean [expr $Sum/[llength $InputData]]; # llength is inbuild command, which returns the number of elements in the argument
   return $Mean; 
}
set Mean_1 [expr [CalculateMean {10 30}] + [CalculateMean {10 30 40 50 60}]]; 
set Mean_2 [expr [CalculateMean {30 {[CalculateMean {10 30}]}}]]; 
# puts "Mean_1 = $Mean_1 \t Mean_2 = $Mean_2"


proc Multiply_a_and_b { a {b 10} } { ;# Input Arguments
set Product [expr $a*$b]
   return $Product; 
}

puts [Multiply_a_and_b 10 20]
puts [Multiply_a_and_b 10]

}

# ########################################################################################
# Procs End
# ########################################################################################