# Iterated Component Association

> Unleash the power of iteration within array and container aggregates in Ada
> 2022!
>
> - Seamlessly integrate iterators into aggregate expressions for concise and
>   expressive code.
> - Effortlessly create arrays and containers based on transformations or
>   combinations of existing elements.
> - Enjoy a more fluent and powerful syntax for array and container
>   initialization.
> 
> ```ada
> Values : Integer_Array := [for J in 1 .. 5 => j => J * 2];
> ```

## Solved problem

Iterated Component Associations in array/container aggregates address several
challenges in composing aggreagates:

- Verbose and repetitive code: Previously, creating arrays or containers based
  on transformations or combinations of existing elements often required
  explicit loops and intermediate variables, making code lengthy and less
  readable.

- Limited expressiveness: Aggregates were restricted to explicitly listing
  elements or using simple expressions, hindering their ability to handle more
  complex construction scenarios.

- Separation of logic and data: Constructing arrays or containers often involved
  logic outside of the aggregate itself, potentially reducing code clarity and
  maintainability.

In essence, these enhancements empower developers to work with containers in a
more natural and intuitive way, ultimately leading to code that is easier to
write, understand, and maintain.
