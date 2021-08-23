# Acronym Finder

Author: Guillaume Michel

Shell script finding acronyms from a dictionary matching the given input. If the given acronym is a substring or a match of a dictionary entry, this entry will be printed. 

## Example

Using the following dictionary

```
ESA European Space Agency
NASA National Aeronautics and Space Administration
FYI For Your Information
TL;DR Too Long; Didn't Read
TCP Transmission Control Protocol
```

the script will produce the following output

```bash
$ acronym FYI
FYI For Your Information

$ acronym sa
ESA European Space Agency
NASA National Aeronautics and Space Administration

$ acronym FBI
Unknown acronym :(
```

## Usage

Create a `txt` dictionary, with the same format as [dictionary.txt](dictionary.txt), and update the script [acronym](acronym) line 12 with the path of the freshly created dictionary. Make sure the script [acronym](acronym) is executable (`chmod +x acronym`). You can then simply use the script `./acronym KEYWORD`.

To avoid typing the path to the script every time you want to use it, move the file [acronym](acronym) to `/usr/local/bin/` (`sudo mv acronym /usr/local/bin/`) and `source` your `rc` file (e.g `source ~/.bashrc`). Once this is done, the script can be called from any path using `acronym KEYWORD`.
