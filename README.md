
# homebrew-negatives

**Convert and process your digital film negatives. Bash scripts for MacOS.**



## Requirements

Make sure to have the [Homebrew](https://brew.sh/) package manager for MacOS installed. The [installation instructions](https://brew.sh/) may look weird to first-timers, but it's really done in a minute. 

**Optional, but recommended:** Make this *homebrew-negatives* *tap* and its included tools available to your local Homebrew ecosystem. Quoted from Homebrew docs: 
> `brew` will be able to work on those formulae as if they were in Homebrew's canonical repository. You can install and uninstall them with `brew [un]install`, and the formulae are automatically updated when you run brew update.

To install the tap, open your terminal and enter this command:

```bash
$ brew tap tomkyle/negatives
```



## Installation

To install all programs, open your terminal and type:


```bash
$ brew install linear-tiff positive
```


# Formulae

## Scripts for you

### [linear-tiff](https://github.com/tomkyle/negatives-linear-tiff) 

Converts RAW/NEF/CR2 files into linear TIFF files, using GNU Parallel for maximum speed.  
Other features: ICC profiles, image mirroring, B/W grayscaling, TIF resizing and ZIP compression.  

[Documentation](https://github.com/tomkyle/negatives-linear-tiff) &middot;
[Usage](https://github.com/tomkyle/negatives-linear-tiff#usage) &middot; 
[Options](https://github.com/tomkyle/negatives-linear-tiff#options)

```bash
# with tap installed:
$ brew install linear-tiff

# ...or without having tap installed:
$ brew install tomkyle/negatives/linear-tiff
```

### [positive](https://github.com/tomkyle/negatives-positive) 

Converts digital film negatives (TIFF files) to positive images, using GNU Parallel for timesaving.  
Other features: Gamma correction, sigmoidal contrast enhancement, resizing and flipping, JPG conversion.
  
[Documentation](https://github.com/tomkyle/negatives-positive) &middot; 
[Usage](https://github.com/tomkyle/negatives-positive#usage) &middot; 
[Options](https://github.com/tomkyle/negatives-positive#options)

```bash
# with tap installed:
$ brew install positive

# ...or without having tap installed:
$ brew install tomkyle/negatives/positive
```



## Helpers and dependencies

You do not need to install these tools manually, as they are needed by the tools above and thus are installed automatically.

### color-profiles 

Makes ICC profiles for handling linear TIFF and digital film negatives available.  
Both *positive* and *linear-tiff* use it as dependency.  

[Documentation](https://github.com/tomkyle/negatives-color-profiles)

```bash
# with tap installed:
$ brew install color-profiles

# ...or without having tap installed:
$ brew install tomkyle/negatives/color-profiles
```


