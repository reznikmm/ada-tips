# Reduction Expressions

> Use Ada 2022's new Map-Reduce attribute to concisely and efficiently summarize
> value sets. This attribute allows you to specify a reducer subprogram to
> combine values, and an initial value. The reducer subprogram is called once
> for each value in the set, and the result of the reduction is the final value
> of the attribute.
>
> ```ada
> Sum : Integer := My_Array'Reduce ("+", 0);
> ```

The `'Reduce` attribute demonstrates flexibility in its application, accepting
various prefixes for data processing. It can operate on arrays, containers, or
iterated_component_associations enclosed within square brackets, providing
versatile options for data reduction tasks.

```ada
Sum : constant Integer :=
  [for J in 0 .. 3 => 2**J]'Reduce ("+", 0);
```

## Addressed problem

The Map-Reduce attribute in Ada 2022 addresses a common programming challenge:
efficiently processing and summarizing a set of values. Prior to this feature,
developers often relied on subprograms with loops and accumulator variables,
which can become cumbersome and hinder code readability. This approach also
makes it difficult to express summaries within contract specifications, as it
requires creating separate subprograms.

The Map-Reduce attribute offers a more concise and expressive way to perform
reductions directly within expressions. This eliminates the need for explicit
loops and accumulators, leading to cleaner and more maintainable code. It also
allows for seamless integration of summaries within contract specifications,
enhancing code clarity and facilitating understanding of preconditions and
postconditions.

The attribute aligns with Ada's trend towards a more functional programming
style, complementing existing features like quantified expressions and array
aggregates. It provides a general-purpose mechanism for summarizing various data
types, extending beyond Boolean values and arrays. This versatility empowers
developers to write more concise and expressive algorithms across a wide range
of use cases.

In short, the Map-Reduce attribute significantly improves how Ada handles data
reduction, offering a powerful and user-friendly tool for writing cleaner, more
expressive, and maintainable code.
