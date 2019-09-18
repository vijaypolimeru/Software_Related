wipe;


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