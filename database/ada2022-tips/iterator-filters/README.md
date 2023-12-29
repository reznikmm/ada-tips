# Iterator filters

> Streamline your Ada code with Iterator Filters!
>
> Write cleaner and more concise code by filtering elements directly within
> iterators. Use the `when` keyword to specify a condition, effortlessly
> creating subsets of containers, arrays, or element sequences. Perfect for
> aggregates, reductions, and parallel loops!
>
> ```ada
> Data : Integer_List :=
>   [for X of Values when X > 0 => X / 2];
> ```

## Addressed problem

The Iterator Filters feature in Ada 2022 addresses an issue with iterating over
elements in various contexts like container aggregates, reduction expressions,
and even parallel loops.

Previously, if you wanted to limit the iteration to a specific subset of
elements, you had limited options:

- **`if`-statements within loops**: This works for simple cases but becomes
  clunky and hard to read within expressions like aggregates or reductions.
- **Predicates in loop parameters**: This restricts the entire iteration based
  on a fixed condition, not dynamically filtering individual elements.
- **Creating separate containers**: Manually iterating and copying desired
  elements adds unnecessary complexity and code bloat.

Iterator Filters directly tackle this problem by letting you insert dynamic
filtering logic directly within the iterator. This provides several benefits:

- **Improved code clarity and conciseness**: The filtering logic is right where
  it belongs, enhancing readability and maintainability.
- **Expressive and flexible**: Filter any element based on any condition during
  iteration, regardless of the container type or expression usage.
- **Efficient for aggregates and reductions**: Filtering eliminates unnecessary
  processing of irrelevant elements, potentially improving performance.
- **Cleaner parallel loops**: Clearly indicate elements that won't contribute
  significantly to parallel computations, simplifying timing estimations.

In essence, Iterator Filters provide a powerful and elegant way to handle
element selection within iterators, leading to cleaner, more efficient, and
easier-to-understand Ada code.
