# Big Numbers support

> Big Integers in Ada 2022 are a powerful tool for working with large numbers.
> They can be used for a variety of tasks, including scientific simulations,
> financial calculations, and even game development.
>
>     M_256 : Big_Integer := 2**256;

## Addressed problem

The addressed problem is the limitation of Ada's standard integer types for
applications that require larger numbers. The inability to handle values beyond
the range of standard integer types posed a challenge for certain applications.
The new feature in Ada 2022, "Predefined Big Numbers support" introduces
packages for arbitrary precision mathematics. This enhancement enables
developers to work with integer arithmetic involving values larger than those
supported by the target machine, facilitating applications that demand extended
numeric precision.

Ada 2022 also introduces the powerful `Big_Real` type, offering predefined support for arbitrary precision real numbers. This enhancement enables solving computational challenges that involve extended precision requirements, including tasks such as precise real number calculations, simulations with large datasets, and applications in cryptography where high precision is essential. The `Ada.Numerics.Big_Numbers.Big_Reals` package provides a rich set of functionalities, ensuring that developers can confidently handle computations requiring increased precision in various domains.