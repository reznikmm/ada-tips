# Getting the representation of an enumeration value

> Work directly with enumeration representation values in Ada 2022 using the new
> ` Enum_Rep`` and  `Enum_Val`` attributes!
>
>     Code : Integer := Status_Code'Enum_Rep (Disk_Full);

## Addressed problem

The solved problem is the difficulty of accessing and manipulating the internal
representation values of enumeration literals especially in generic units.
Previously, developers had to resort to using the `Ada.Unchecked_Conversion`
function, which had limitations and wasn't always portable.

The new `Enum_Rep` and `Enum_Val` attributes in Ada 2022 provide a cleaner, more
reliable solution. They allow developers to:

- Directly access the internal representation value (code) of an enumeration
  literal using `T'Enum_Rep`.
- Convert an internal code back to the corresponding enumeration value using
  `T'Enum_Val`.

This solves the problem because:

- These attributes work with any discrete subtype, including generic formal
  types. This removes the limitations of `Ada.Unchecked_Conversion` that
  wouldn't work with non-static sizes.
- They provide a safer and more portable approach compared to
  `Ada.Unchecked_Conversion`.

Overall, the introduction of `Enum_Rep` and `Enum_Val` simplifies and improves
the handling of enumeration representation values in generic units within
Ada 2022.
