# bstrith
provides procedures for arithmetic operations on binary numbers in strings.

## Overview
The bstrith provides procedures to handle binary integers written in strings. The primary purpose is to provide the functions for some operations, including arithmetic, bit, logical, and comparison operations.

### functions
- arithmetic operations
    - `add`
    - `sub`
- bit operations
    - `shift`
    - `shift_l`
    - `shift_r`
- logical operations
    - `and`
    - `or`
    - `xor`
    - `not`
- comparison operations
    - `is_equal`
    - `is_not_equal`

### Examples
```Fortran
    use :: bstrith
    print *, add("11111111", "00000001") ! "00000000"
    print *, sub("00000000", "00000001") ! "11111111"
```

## Getting started
### Requirements
bstrith has been tested only on Windows 10 but may also work on Linux/MacOS. The compilers and versions listed below have been used to develop Strith.

- A Fortran 2008 compiler
    - gfortran 11.2 bundled with quickstart Fortran on Windows
    - Intel Fortran Classic 2021.5.0 Build 20211109_000000
    - NAG Fortran 7.1 Build 7117
- Fortran Package Manager (fpm) 0.9.0 alpha

#### Get the code
To get the code, execute the following commnad:
```console
git clone https://github.com/degawa/bstrith.git
cd strish
```

#### Build with fpm
To build the library using fpm, execute the following command:
```console
fpm build
```

#### Reference from your project
Add the following use statement to modules or procedures calling bstrith.

```Fortran
use :: bstrith
```

#### Reference as a fpm project's dependency
To use Strith in your fpm project, add the following to the fpm.toml.

```toml
[dependencies]
bstrith = {git = "https://github.com/degawa/bstrith.git"}
```
