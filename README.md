
# homebrew-negatives

**Bash scripts for converting and processing digital film negatives.**



## Add this tap to Homebrew (OS X)

First, make sure [Homebrew](https://brew.sh/) is installed. Add this Homebrew tap to your local Homebrew ecosystem:


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

### color-profiles 

Makes ICC profiles for handling linear TIFF and digital film negatives available.  
[Project page](https://github.com/tomkyle/negatives-color-profiles)

```bash
# with tap installed:
$ brew install color-profiles

# ...or without having tap installed:
$ brew install tomkyle/negatives/color-profiles
```


