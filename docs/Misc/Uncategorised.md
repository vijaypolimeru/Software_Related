# Uncategorised...

## MkDocs

### Multilevel Navigation

MkDocs supports only upto 2nd level navigation. `Tab` spacing is not supported, use `spacebar` of creating spaces. The subfolder *Misc* is not necessary, that is created just to organise the content proeprly

```
nav:
- Home: index.md
- OpenSEES (User): OPS_User.md
- OpenSEES VC++: OPS_VCpp.md
- OpenSEES UBUNTU: OPS_Ubuntu.md
- Tcl/Tk Language: Tcl_Tk.md
- C++ Libraries and Tools: Cpp_Lib_Tools.md
- Artificial Intelligence: Art_Int.md
- Misc:
    - UBUNTU OS Related: Misc\UBUNTU_OS_Rel.md
    - Uncategorised: Misc\Uncategorised.md
```