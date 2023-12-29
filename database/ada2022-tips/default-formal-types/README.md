# Default types in generics

> Streamline your generic instantiations with default types! Ada 2022 now lets
> you specify default subtypes for generic formal types, saving you time and
> effort when creating instances. Simply add "or use subtype_mark" to your
> formal type declaration to set a convenient default.
>
> ```ada
> generic
>    type Count_Type is range <>
>      or use Natural;
> ```

## Addressed problem

The new feature of specifying default subtypes for generic formal types in Ada
2022 addresses two main problems:

- **Boilerplate reduction**: Writing complex generic instantiations can be
  cumbersome, often requiring explicit values for all formal parameters. This
  can lead to repetitive code and decrease readability. Default subtypes allow
  you to pre-define a sensible option for specific formal types, eliminating the
  need to explicitly specify them in every instance.

- **Flexibility and ease of use**: By providing default options for certain
  types, you make your generic units more flexible and user-friendly. This helps
  developers create specific instances with less effort and reduces the risk of
  errors from omitting required parameters.

Overall, this feature simplifies the use of generics in Ada, encouraging cleaner
code and improving developer productivity.
