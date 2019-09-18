# Tcl/Tk Language

## Useful Codes

### Loading file and saving its contents in a variable

1. File with single vector of values
```tcl
set filename "Abc_123_Cde.out"; # Keep this file in the folder or if it is elsewhere provide location (set filename "C:\badfba\asdf\Abc_123_Cde.out";)
set File_ID [open $filename r]; #Load the File (Abc_123_Cde.out) and read the values i
set Variable_1 [read $File_ID]
close $File_ID
```
*Example*, using the above varaible `Variable_1` in a `foreach` loop
```tcl
foreach counter $Variable_1 {
	set Temp_Var $counter
	puts "Print the value of Temp_Var = $Temp_Var"
}
```
The use the vector `Variable_1` like anyother vector in `tcl`

2. File with Multiple vectors of values
```tcl
set filename "Abc_123_Cde.out"; # Keep this file in the folder or if it is elsewhere provide location (set filename "C:\badfba\asdf\Abc_123_Cde.out";)
set File_ID [open $filename r]; #Load the File (Abc_123_Cde.out) and read the values i 

for {set i 1} {$i < 100} {incr i 1} { # Say, 100 lines are there in the files with 5 Columns of equal Lengths
	gets $File_ID line
	scan $line "%i %i %i %f %f" Data_1($i) Data_2($i) Data_3($i) Data_4($i) Data_5($i) ; # Data_1,2,3,4 and 5 are vectors of equal length
}
```
That's it, we have loaded a file and stored its contents in different vectors. Now you can used the vectors like anyother vector in the program.
```
foreach i $Data_1 {
	puts "Data_1($i) \t Data_2($i) \t Data_3($i) \t Data_4($i) \t Data_5($i)"	
}  
```

3. [Link](https://www.tutorialspoint.com/tcl-tk/tcl_file_io.htm), For more information on Tcl - File I/O,

## Useful Commands/Syntaxes

### ***If...else if ... else***, syntax in Tcl language is − ([for more info](https://www.tutorialspoint.com/tcl-tk/tcl_if_else_statement.htm))
```tcl
if {boolean_expression 1} {
   # Executes when the boolean expression 1 is true
} elseif {boolean_expression 2} {
   # Executes when the boolean expression 2 is true 
} elseif {boolean_expression 3} {
   # Executes when the boolean expression 3 is true 
} else {
   # executes when the none of the above condition is true 
}
```
Example
```tcl
set Time_Step 0.005;
set 
set ok [analyze 1 $Time_Step]
if {$ok == 0} { 
	puts "i = $i \t Time_Step = $Time_Step -----------------------------"
} elseif {$ok < 0} {
	puts "i = $i \t OK value = $ok -----------------------------"
} else {
	break; # It breaks a for loop
}
```
If the Boolean expression evaluates to true, then the if block of code will be executed, otherwise the elseif block of code will be executed, otherwise the else block of code will be executed.



### ***Block Commenting*** in tcl
``` tcl
if 0 {
    Anything you write here will be treated as a comment and ignored 
}
```


### Different types of ***loops***

1. `for` Loop
``` tcl
set N 100;
for {set i 1} {$i < $N} {incr i 1} {
	puts "The Value of i = $i";
}
```

2. `foreach` Loop
```tcl
set Variable_Vector "1 2 3 4 5 6 7 8 9";

foreach i $Variable_Vector {
	puts "The Value of i = $i";
}  	
```

3. `while` Loop
```tcl
set i 0;
set N 100;
while {$i < $N} {
	puts "The Value of i = $i";
	set i [expr ($i + 1)];
} 	
```
or
```tcl
set i 0;
set N 100;
while {$i < $N} {
	puts "The Value of i = $i";
	incr i; # incr is equivalent to (set i [expr ($i + 1)])
} 	
```
	
### Creating ***functions (or procedures)*** 

Tcl Procedures are similar to the functions in other programming languages. They basically avoid repeating the same code
at multiple locations. Procedures are created using `Proc` command. A simple Procedure has the following syntax
```tcl
proc procedureName {arguments} {
   body of code
   return $var
}
```

1. ***Example - 1***, Definition of a simple `proc` to check `puts` command
```tcl
proc CheckPutsCommand {} { ;# No Input Arguments
   puts "Hurray, Puts is working"
   
}
CheckPutsCommand
```
Upon exection, following output will be printed in the console (*Note*, `proc` name is case-sensitive, both calling and defining names should be same)
```
Hurray, Puts is working
```

2. ***Example - 2***, Definition of a `proc` with Multiple but single valued arguments
```tcl
proc AddNumbers { a b} { ;# Input Arguments
   set sum [expr $a + $b]
   return $sum;
   
}
AddNumbers 10 30
```
Upon exection, following output will be printed in the console
```
40
```

3. ***Example - 3***, Definition of a `proc` with ___Multiple Variable___ arguments (each argument is a vector)
```tcl
proc CalculateMean { InputData } { ;# Input Arguments
   set Sum 0;
   foreach InputData_i $InputData {
	 set Sum [expr $Sum + $InputData_i]
   }
   set Mean [expr $Sum/[llength $InputData]]; # llength is inbuilt command, which returns the number of elements in the argument
   return $Mean; 
}
set Mean_1 [expr [CalculateMean {10 30}] + [CalculateMean {10 30 40 50 60}]]; 
set Mean_2 [expr [CalculateMean {30 {[CalculateMean {10 30}]}}]]; # slightly difficult command *giving `proc` as an argument*
puts "Mean_1 = $Mean_1 \t Mean_2 = $Mean_2"
```
Upon exection, following output will be printed in the console (*Note*, Be careful while using braces, `tcl` is very bad at exception handling)
```
Mean_1 = 58      Mean_2 = 25
```

4. ***Example - 4***, Definition of a `proc` with ___Default arguments___
```tcl
proc Multiply_a_and_b { a {b 10} } { ;# Input Arguments
set Product [expr $a*$b]
   return $Product; 
}

puts [Multiply_a_and_b 10 20]
puts [Multiply_a_and_b 10]
```
Upon exection, following output will be printed in the console (*Note*, Be careful while using braces, `tcl` is very bad at exception handling)
```
200
100
```
5. ***NOTES*** - 
	1. While calling the funtion, if the function is located elsewhere you have to call the file also using `source C:\bladdh\adfadsff\filename.tcl` before calling the function. (like we call the header files in `c` or `c++` languages). 
	2. You can define any number of `procs` in a file.