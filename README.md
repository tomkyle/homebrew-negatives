
# homebrew-negatives

This tap shall contain my tools for processing digital film negatives.

## Requirements

- Install [Homebrew](https://brew.sh/) on your Mac - [Installationsanleitung auf deutsch](https://brew.sh/index_de.html)


## Install tap (optional) 


```bash
$ brew tap tomkyle/negatives
```

From [brew docs:](https://github.com/Homebrew/brew/blob/master/docs/brew-tap.md)

> After that, `brew` will be able to work on those formulae as if they were in Homebrew's canonical repository. You can install and uninstall them with `brew [un]install`, and the formulae are automatically updated when you run brew update. 



## List of formulae


### lineartiff 

Converts RAW/NEF/CR2 files into linear TIFF files, using GNU Parallel for maximum speed.  
Other features: B/W grayscaling, TIF resizing and ZIP compression.  
[Project page](https://github.com/tomkyle/negatives-lineartiff)

```bash
# with tap installed:
$ brew install lineartiff

# ...or without having tap installed:
$ brew install tomkyle/negatives/lineartiff
```

### positive 

Converts digital film negatives (TIFF files) to positive images, using GNU Parallel for timesaving.  
Other features: Gamma correction, sigmoidal contrast enhancement, resizing, JPG conversion  
[Project page](https://github.com/tomkyle/negatives-positive)

```bash
# with tap installed:
$ brew install positive

# ...or without having tap installed:
$ brew install tomkyle/negatives/positive
```

### iccprofiles 

Makes ICC profiles for handling linear TIFF and digital film negatives available.  
[Project page](https://github.com/tomkyle/negatives-iccprofiles)

```bash
# with tap installed:
$ brew install iccprofiles

# ...or without having tap installed:
$ brew install tomkyle/negatives/iccprofiles
```


