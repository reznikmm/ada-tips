# Numeric/string literals for user's types

> Empower your abstract data types with user-defined numeric or string literals
> in Ada 2022!
>
> Streamline your code and enhance readability by defining how numeric (or
> string) literals interact with your custom types.
>
>     S : My_String := "value";

## Addressed problem

The addressed problem is the inability to use numeric and string literals with
abstract data types like containers, unbounded strings, and "big numbers" in
Ada 2012. This limitation can lead to cumbersome workarounds like "hijacking"
operators to represent literals indirectly, making the code less clear and
potentially requiring additional boilerplate like "use" clauses.

The proposed solution aims to address this by allowing user-defined meanings for
numeric or string literals within the context of specific private types. This
would enable a more natural and intuitive way to express values of these
abstract data types using familiar numeric syntax.
