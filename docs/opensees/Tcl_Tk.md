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
	
### Operations on ***Arrays***

Tcl supports two types of arrays, 

1. Conventional Array - In which a group of elements (numbers or strings) are systematically arranged using ***Indices***.
2. Associative Array - In which a group of elements (numbers or strings) are systematically arranged using ***Indices*** which are not necessarily a number.

#### Conventional Arrays

Syntaxes

1. The syntax for a *creating* conventional array is `set ArrayName(Index) Value` (Value - can be a number or string, Index - Is a +Ve Integer starting from `0`). These Indices are also called `Keys` 
2. The syntax for a *calling* conventional array is `$ArrayName(Index_Value)`, if you know the index value. If index value is stored in another varaible then `$ArrayName($Index_Value)`.
3. The syntax for finding the Array Size is `set Size_Variable_Name [array size ArrayName]`- It is a type of expression whose output is an integer and must be stored in a variable.


Examples on *conventional arrays*

1. Basic Operations
	```tcl
	set Num_Array(0) 1;
	set Num_Array(1) 1.5;
	set Num_Array(2) [expr 2.0/3.0];
	set Num_Array(3) Vijay; # No Spaces
	set Num_Array(4) "Vijay Kumar"; # With Spaces, double quotes are necessary otherwise it is an error (wrong # args: should be "set varName ?newValue?")

	set Size_Num_Array [array size Num_Array]; # it returns 5


	puts "Num_Array(0) = $Num_Array(0) \n";
	puts "Num_Array(1) = $Num_Array(1) \n";
	puts "Num_Array(2) = $Num_Array(2) \n";
	puts "Num_Array(3) = $Num_Array(3) \n";
	puts "Num_Array(4) = $Num_Array(4) \n";
	puts "Size_Num_Array = $Size_Num_Array \n"; # $Size_Num_Array(0) is an error (can't read "Size_Num_Array(0)": variable isn't array)
	``` 
	or
	```tcl
	set Index_Value 0;
	puts "Num_Array($Index_Value) = $Num_Array($Index_Value) \n";
	```
2. Array Iteration

	```tcl
	for { set Index_Value 0 }  { $Index_Value < [array size Num_Array] }  { incr Index_Value } {
		puts "Num_Array($Index_Value) = $Num_Array($Index_Value) \n";
	}

	```

#### Associative Arrays

1. The syntax for a *creating* Associative array is `set ArrayName(Index_ID) Value` (Value - can be a number or string, Index_ID - can also be a number or string). 
2. The syntax for a *calling* conventional array is `$ArrayName(Index_ID)`, if you know the Index_ID else first you must know all the Index_IDs. To know the index_ids use `set Index_ID_List [array names ArrayName];` this sets all the index_ids in a list named `Index_ID_List` (you can use any name here) in a random order.
3. The syntax for finding the Array Size is `set Size_Variable_Name [array size ArrayName]`- It is a type of expression whose output is an integer and must be stored in a variable.


Examples on *Associative arrays*

1. Basic Operations

	```tcl
	set Ass_Array(Age) 1;
	set Ass_Array(Height) 1.5;
	set Ass_Array(1) [expr 2.0/3.0]; # Index ID can also be a number
	set Ass_Array(3.5) [expr 10/5]; # Index ID can also be a floating point number
	set Ass_Array(Name) My_Name; # No Spaces
	set Ass_Array(Full_Name) "My Full Name"; 

	puts "$Ass_Array(Full_Name)"

	set Size_Ass_Array [array size Ass_Array]; # it returns 5
	set A [array names Ass_Array]; # or simply use
	puts [array names Ass_Array]; to print the index_ids

	```
 
2. Array Iteration

	```tcl
	foreach index_ids [array names Ass_Array] {
	   puts "Ass_Array($index_ids): $Ass_Array($index_ids)"
	}
	```

***Note*** - Use `for` loop for conventional arrays and `foreach` loop for associative arrays

#### Other Misc Commands on ***Array*** Operations

***Note*** - Following content is directly copied from [the website](https://www.astro.princeton.edu/~rhl/Tcl-Tk_docs/tcl/array.n.html). At present, even I am not sure what is happening here, I Will imporve it with more detailed examples soon...

---

General syntax for operating on array varibale is `array option arrayname? arg1 arg2 ... argn?`. Follwoing are the commands available for array manipulations

1. ***array anymore arrayName searchId*** - 

    Returns 1 if there are any more elements left to be processed in an array search, 0 if all elements have already been returned. SearchId indicates which search on arrayName to check, and must have been the return value from a previous invocation of array startsearch. This option is particularly useful if an array has an element with an empty name, since the return value from array nextelement won't indicate whether the search has been completed.

2. ***array donesearch arrayName searchId*** - 

    This command terminates an array search and destroys all the state associated with that search. SearchId indicates which search on arrayName to destroy, and must have been the return value from a previous invocation of array startsearch. Returns an empty string.

3. ***array exists arrayName*** - 

    Returns 1 if arrayName is an array variable, 0 if there is no variable by that name or if it is a scalar variable.

4. ***array get arrayName ?pattern?*** - 

    Returns a list containing pairs of elements. The first element in each pair is the name of an element in arrayName and the second element of each pair is the value of the array element. The order of the pairs is undefined. If pattern is not specified, then all of the elements of the array are included in the result. If pattern is specified, then only those elements whose names match pattern (using the matching rules of string match) are included. If arrayName isn't the name of an array variable, or if the array contains no elements, then an empty list is returned.

5. ***array names arrayName ?mode? ?pattern?*** - 

    Returns a list containing the names of all of the elements in the array that match pattern. Mode may be one of -exact, -glob, or -regexp. If specified, mode designates which matching rules to use to match pattern against the names of the elements in the array. If not specified, mode defaults to -glob. See the documentation for string match for information on glob style matching, and the documentation for regexp for information on regexp matching. If pattern is omitted then the command returns all of the element names in the array. If there are no (matching) elements in the array, or if arrayName isn't the name of an array variable, then an empty string is returned.

6. ***array nextelement arrayName searchId*** - 

    Returns the name of the next element in arrayName, or an empty string if all elements of arrayName have already been returned in this search. The searchId argument identifies the search, and must have been the return value of an array startsearch command. Warning: if elements are added to or deleted from the array, then all searches are automatically terminated just as if array donesearch had been invoked; this will cause array nextelement operations to fail for those searches.

7. ***array set arrayName list*** - 

    Sets the values of one or more elements in arrayName. list must have a form like that returned by array get, consisting of an even number of elements. Each odd-numbered element in list is treated as an element name within arrayName, and the following element in list is used as a new value for that array element. If the variable arrayName does not already exist and list is empty, arrayName is created with an empty array value.

8. ***array size arrayName*** - 

    Returns a decimal string giving the number of elements in the array. If arrayName isn't the name of an array then 0 is returned.

9. ***array startsearch arrayName*** - 

    This command initializes an element-by-element search through the array given by arrayName, such that invocations of the array nextelement command will return the names of the individual elements in the array. When the search has been completed, the array donesearch command should be invoked. The return value is a search identifier that must be used in array nextelement and array donesearch commands; it allows multiple searches to be underway simultaneously for the same array. It is currently more efficient and easier to use either the array get or array names, together with foreach, to iterate over all but very large arrays. See the examples below for how to do this.

10. ***array statistics arrayName*** - 

    Returns statistics about the distribution of data within the hashtable that represents the array. This information includes the number of entries in the table, the number of buckets, and the utilization of the buckets.

11. ***array unset arrayName ?pattern?*** - 

    Unsets all of the elements in the array that match pattern (using the matching rules of string match). If arrayName isn't the name of an array variable or there are no matching elements in the array, no error will be raised. If pattern is omitted and arrayName is an array variable, then the command unsets the entire array. The command always returns an empty string. 


---
## Bucket List of upcoming Tcl/Tk Topics
	
- [ ] Operations on ***Lists***
- [ ] Operations on ***Dictionaries***
- [ ] Plotting in Tcl with realtime data from OpenSees
- [ ] Introduction to Tk








