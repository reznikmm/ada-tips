# Square brackets

> Ada 2022 streamlines array aggregate syntax with square brackets. Create
> arrays more concisely by using `[]` instead of `(1 .. 0 => )` for empty arrays
> and `[X]` for single-element lists.

## Solved problem

The new square bracket syntax for Ada 2022 array aggregates solves two main
problems:

- Verbosity: Using parentheses and null ranges `(1 .. 0 => <>)` for empty arrays
  and an extra index association for single-element lists `(1 => X)` is clunky
  and visually distracting. It can hinder code readability and make simple
  operations like initializing arrays seem more complex than they need to be.
- Syntactic conflict: The existing syntax for single-element lists requires
  explicit index association, otherwise it conflict with expressions in
  parentheses. For example, the following code is invalid:

```ada
My_Variable : Integer_Array := (42); -- Invalid
```

The new square bracket syntax eliminates this conflict by using a different
syntax. This makes it easier to use arrays in complex expressions.

For example, the following code is now valid:

```ada
My_Variable : Integer_Array := [42]; -- Valid
```

This code is now unambiguous, and the compiler can correctly interpret the
desired meaning.

Overall, the new square bracket syntax for Ada 2022 array aggregates provides a
more concise, readable, and intuitive way to create empty and single-element
arrays. It also eliminates a syntactic conflict that could cause errors in
complex expressions.
