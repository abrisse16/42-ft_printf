<div align=center>

# ft_printf

### 42 Common Core / circle #1
<i>Because ft_putnbr() and ft_putstr() aren’t enough.
<br>
This project is pretty straightforward, recode printf. He is about learning what is and how to implement variadic functions.</i>

##

### Final grade
[![abrisse's 42 ft_printf Score](https://badge.nimon.fr/api/v2/clw51aj8x026501rzp5ef4x2f/project/2441631)](https://github.com/Nimon77/badge42)

### Subject
English version [here](https://github.com/abrisse16/42-subjects/blob/7385a594afd19b06ab40ed62b5e8c818d2d8bd21/ft_printf-subject-v9_2.en.pdf)
<br>
French version [here](https://github.com/abrisse16/42-subjects/blob/7385a594afd19b06ab40ed62b5e8c818d2d8bd21/ft_printf-subject-v9.fr.pdf)

</div>

---

## The project

In this project, We had to recode one of the most well-know function in the C language : `printf`.

Our function has to handle some conversions and flags.

### Mandatory part

Manage the following conversions :
- `%c` : prints a single character
- `%s` : prints a string (as defined by the common C convention)
- `%p` : prints the void * pointer argument in hexadecimal format
- `%d` : prints a decimal (base 10) number
- `%i` : prints an integer in base 10
- `%u` : prints an unsigned decimal (base 10) number
- `%x` : prints a number in hexadecimal (base 16) lowercase format
- `%X` : prints a number in hexadecimal (base 16) uppercase format
- `%%` : prints a percent sign

### Bonus part

Manage the field minimum width with all conversions.

Manage any combination of the following flags :
- `-` : left-justify within the given field width
- `0` : left-pads the number with zeroes (0) instead of spaces when padding is specified
- `.` : precision, specifies the number of characters to be printed

Manage all the following flags :
- `#` : used with `x` or `X` conversions, the value is preceeded with `0x` or `0X` respectively
- ` ` : prints a space before positive numbers
- `+` : prints a plus sign (+) or minus sign (-) for a signed conversion


## Usage

Clone this repository :

```sh
git clone https://github.com/abrisse16/42-ft_printf.git path/to/repository
```

In your local repository, run `make`

To use the library in your project, include the header file `ft_printf.h` located in the `includes` directory.

```c
#include "ft_printf.h"
```

Then, compile your project with the library :

```sh
[...] -L path/to/libftprintf.a -lftprintf -I path/to/ft_printf.h
```

---
<div align=center>
	<a href="mailto:abrisse@student.42.fr">abrisse@student.42.fr</a>
</div>