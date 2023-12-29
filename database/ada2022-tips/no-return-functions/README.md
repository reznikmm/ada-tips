# No_Return for functions

> Leverage the `No_Return` aspect for functions, by explicitly indicating that a
> function never returns normally. This is particularly useful for static
> analysis tools focused on identifying conditions under which exceptions might
> be raised.
>
> ```ada
> generic
>    type Count_Type is range <>
>      or use Natural;
> ```

## Addressed problem

The introduction of the `No_Return` aspect for functions in Ada 2022 addresses
the need for explicit indication that a function never returns normally,
typically because it always propagates an exception. This feature is especially
beneficial for static analysis tools, crucial in systems where exceptions are
entirely suppressed in the final product. By allowing developers to annotate
functions with the `No_Return` aspect, the language provides a means to signal
that any call on such a function should be considered a serious error, aiding in
the identification and proof that exceptions will never be raised in the final
system.

Overall, the `No_Return` aspect for functions addresses the challenges of
ambiguity and inconsistency, leading to clearer code, more effective static
analysis, and improved developer experience.
