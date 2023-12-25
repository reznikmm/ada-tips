# Delta aggregates

> Simplify your code with Ada 2022's delta aggregate notation! Update specific
> parts of composite types while keeping the rest unchanged, making for cleaner
> assignments and postconditions.
>
> ```ada
> Projection : Point_3D := [Point with Z => 0.0];
> ```

## Solved problem

The delta aggregate notation in Ada 2022 solves the problem of awkwardly
expressing modifications to parts of composite types. It provides a more concise
and less error-prone way to update specific components of a record/array, while
leaving the remaining components unchanged.

Here are some of the issues it addresses:

- Cumbersome temporary variables: Previously, modifying a single component often
  involved creating temporary variables and assignments, making the code harder
  to read and maintain.

- Tedious aggregate listings: For large records, listing all components again to
  update just one was cumbersome and error-prone.

- Neglecting unchanged components: In postconditions, the complexity of these
  workarounds could lead to the author only mentioning the changed component,
  neglecting to document that other parts remained the same.

The delta aggregate notation offers a cleaner and more efficient way to handle
these situations, improving both code readability and maintainability.
