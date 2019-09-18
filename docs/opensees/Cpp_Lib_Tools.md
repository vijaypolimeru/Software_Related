# C++ Libraries and Tools


## Armadillo Variable Visualizer for Visual Studio

Copy paste the following code in a file with name `xx_AnyName_xx.natvis` and place it in the folder 
`C:\blah_blah_blah\Microsoft Visual Studio\2017\Enterprise\Common7\Packages\Debugger\Visualizers` it will automatically into the Visual Studio. This piece of code has been verified in VS 2017 and hopefully it will work in other higher versions also. [source](https://stackoverflow.com/a/42254414/9806044)

```cpp
<?xml version="1.0" encoding="utf-8"?>
<AutoVisualizer xmlns="http://schemas.microsoft.com/vstudio/debugger/natvis/2010">


  <Type Name="arma::Col&lt;*&gt;">
    <DisplayString>{{ Size = {n_elem} }}</DisplayString>
    <Expand>
      <Item Name="[size]">n_elem</Item>
      <ArrayItems>
        <Size>n_elem </Size>
        <ValuePointer>mem</ValuePointer>
      </ArrayItems>
    </Expand>
  </Type>

  <Type Name="arma::Mat&lt;*&gt;">
    <DisplayString>{{ {n_rows} x {n_cols} = {n_elem} }}</DisplayString>
    <Expand>
      <IndexListItems>
        <Size>n_cols</Size>
        <ValueNode >
          mem+($i*n_rows),[n_rows]
        </ValueNode>
      </IndexListItems>
    </Expand>
  </Type>



  <Type Name="arma::subview_col&lt;*&gt;">
    <DisplayString>{{ {n_rows} }}</DisplayString>
    <Expand>
      <ArrayItems>
        <Size>n_rows</Size>
        <ValuePointer>colmem</ValuePointer>
      </ArrayItems>
    </Expand>
  </Type>

</AutoVisualizer>
```
