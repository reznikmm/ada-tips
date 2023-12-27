# Import of variadic C functions

> Working with variadic C functions in Ada 2022? Now you can enjoy a new,
> smoother way to interface with them!
>
>     procedure printf (fmt : char_ptr; arg : int)
>       with Convention => C_Variadic_1,

## Addressed problem

The solved problem is the difficulty of interfacing with variadic C functions
(functions that take a variable number of arguments) in Ada 2012 and earlier
versions.

Previously, the existing calling conventions didn't handle variadic C functions
well, particularly on systems like 64-bit Linux. This led to unpredictable
results and made it cumbersome to write portable interfaces.

The new solution introduces a standard way to specify the calling convention for
variadic C functions: the `C_Variadic_`_N_ identifiers. This allows you to
explicitly tell Ada how many fixed parameters the function takes and how to
handle the variable number of additional arguments.

This makes interfacing with variadic C functions in Ada much more reliable and
predictable, simplifying code development and improving portability.
