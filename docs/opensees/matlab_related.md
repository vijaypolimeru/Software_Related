# MATLAB Related...

## Frequently used Commands

1. [xlsread](https://in.mathworks.com/help/matlab/ref/xlsread.html#d117e1634382)
```matlab
Data = xlsread('File_Name.xlsx','SheetName','A2:B2124');
```
2. Save variable (scalar or vector or matrix) in different file formats, ([for more info](https://in.mathworks.com/help/matlab/ref/save.html))
```matlab
% Text File Format (.txt)
Mat_A = rand(64,60);
dlmwrite('File_Name.txt',Mat_A);

% Text File Format (.txt)
A = rand(1,10);
B = rand(10);
save('File_Name.txt','A','B','-ascii'); % Save to File_Name.txt (ascii file format)
type('File_Name.txt'); % Viewing the contents of the saved file


% Matlab Variable Format (.mat)
A = rand(20,30);
B = rand(20);
save('FileName.mat','A','B')
```

3. Display text in Command window using `fprintf`
```MATLAB
fprintf('k = %d and %s \n', k, files(k).name);
```

## Useful Codes

### Generate a vector of Random Values (`No_of_Values`) between `MinValue` and `MaxValue`. 

```matlab
function [ RandValue ] = RandomValueFunc( MinValue, MaxValue, No_of_Values )
	RandValue = MinValue + rand(1, No_of_Values)*(MaxValue - MinValue);
end
```


### Loading a file having complex file name (such as `Abs_12_bcd_23.txt`).

```matlab
i = 12;
j = 23;
OutPut_dlmread = dlmread(['Abs_', num2str(i), '_bcd_', num2str(j), '.txt']); % using dlmread command
OutPut_Load = load(['Abs_', num2str(i), '_bcd_', num2str(j), '.txt']); % using load command
``` 


### Different ways of running Opensees from MATLAB

1. Normal command
```MATLAB
!OpenSees_Dim10000.exe "run".tcl
```
2. Within a `for` loop
```MATLAB
for i = 1:1000
	filename = ['Abs_', num2str(i), '_File.tcl'];
	system(['OpenSees_0db612a.exe<',filename]);
end
```
	
### Loading files from a directory by **extension**.

In the below example we are loading all files having names `DFree_xxx_0.out`, in which `DFree` and `_0.out` is common in all files and `xxx` is a number which is different in all the files. (an example file name will be like `DFree_107_0.out`)

```matlab
files = dir(['Data\DFree', '*.out']);
for k = 1:length(files)
	k;
	files(k).name
	ForceDisp = dlmread(['Data\', files(k).name]);
	
	% or
	
	ForceDisp = dlmread([files(k).folder, '\' ,files(k).name]);

end

``` 
### Loading files from a directory by **extension**.

In the below example we are loading all files having names `DFree_xxx_0.out`, in which `DFree` and `_0.out` is common in all files and `xxx` is a number which is different in all the files. (an example file name will be like `DFree_107_0.out`)

```matlab
files = dir(['Data\DFree', '*.out']);
for k = 1:length(files)
	k;
	files(k).name
	ForceDisp = dlmread(['Data\', files(k).name]);
	
	% or
	
	ForceDisp = dlmread([files(k).folder, '\' ,files(k).name]);

end

``` 

### Saperating a number from a string using `sscanf( )`.

In the below example we are loading all files having names `DFree_xxx_0.out`, in which `DFree` and `_0.out` is common in all files and `xxx` is a number which is different in all the files. (an example file name will be like `DFree_107_0.out`)

```matlab
str_1 = 'abc_file_10.txt';
n1 = sscanf(str_1, 'abc_file_%d.txt')

str_2 = 'abc_file_10_30.5.txt';
n2 = sscanf(str_2, 'abc_file_%d_%f.txt')

str_3 = 'abc_file_15.56_20.36.txt';
n3 = sscanf(str_3, 'abc_file_%f_%f.txt')
``` 

## Bucket List of upcoming Matlab Topics
	
- [ ] Developing Journal Paper Quality Images in MATLAB
- [ ] More Topics will be added soon :)
