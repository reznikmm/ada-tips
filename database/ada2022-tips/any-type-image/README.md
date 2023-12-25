# Attribute `'Image` for all types

> Now, the 'Image attribute is applicable to all types, not just scalar types.
> This change allows for a default Image attribute for all types, making it
> particularly useful for debugging purposes.
>
>     Put_Line (Object'Image);

## Addressed problem

This change in Ada 2022 aims to address two main goals:

- **Simplify debugging**: Previously, Ada only provided an `'Image` attribute
  for scalar types. This made it difficult to easily view and understand objects
  of other types, especially composite types like records and arrays, during
  debugging.

  By extending the `'Image` attribute to all types, developers can now get a
  basic, human-readable representation of any object directly in their debugger
  or `Put_Line` statements. This can significantly simplify the process of
  understanding the state of their program and identifying potential issues.

- **Enable user-defined type presentation**: The new `T'Put_Image` attribute
  allows developers to define their own custom formatting for specific types.
  This provides much more flexibility and control over how object values are
  displayed.

  For example, a developer could define a `'Put_Image` procedure for a custom
  data structure that shows its internal components in a clear and informative
  way, rather than the default representation. This can be particularly valuable
  for complex objects or debugging specialized tasks.
