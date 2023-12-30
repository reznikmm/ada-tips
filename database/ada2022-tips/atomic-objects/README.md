# Accessing atomic object parts

> Accessing subcomponents now reads or writes the entire **atomic** object. This
> ensures precise control over memory-mapped hardware registers, guaranteeing
> correct behavior even for those with specific access requirements.
>
> ```ada
> Register : Register_Type
>   with Atomic,
>        Address => Register_Address;
> ```

## Addressed problem

The new feature in Ada 2022 for accessing subcomponents of **atomic** objects
solves the problem of inaccurate or incomplete memory access when dealing with
hardware registers or other objects with specific access requirements.

The problem:

- Hardware devices often require specific memory access sizes, like reading or
  writing an entire register even when modifying just a part of it.
- Ada previously allowed accessing individual components of atomic objects, but
  compilers might use the wrong size for these accesses, leading to:
  - Unexpected behavior due to incorrect data being read or written.
  - Data corruption if the hardware's specific requirements aren't met.

In short, this feature prevents issues caused by mismatched memory access sizes
and ensures predictable behavior when working with hardware and other objects
with specific access needs.
