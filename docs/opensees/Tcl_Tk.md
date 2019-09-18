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

```

## Useful Commands/Syntaxes

1. ***If...else if ... else***, syntax in Tcl language is − ([for more info](https://www.tutorialspoint.com/tcl-tk/tcl_if_else_statement.htm))
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



2. Block Commenting in tcl
``` tcl
if 0 {
    Anything you write here will be treated as a comment and ignored 
}
```


3. Different types of ***loops***
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
4. Creating ***functions (or procedures)***
```tcl

```