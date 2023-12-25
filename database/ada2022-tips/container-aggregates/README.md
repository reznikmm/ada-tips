# Container aggregates

> Ada 2022 streamlines container initialization with new aggregate syntax!
>
> - Create sets, lists, maps, and more using intuitive square bracket notation,
>   just like arrays.
> - Define even complex container structures concisely and directly within code
>   or contracts.
> - Enjoy simpler and more readable container code with this powerful addition
>   to Ada.
>
> ```ada
> List  : Int_Lists.List := [1, 2, 3];
> Map   : Float_Maps.Map := [1 => 10.0, 2 => 20.0];
> ```

These container aggregates use calls to `Append` and `Insert` procedures under
the hood. Certainly, you can make such aggregates work for your own types. Learn
more in a dedicated chapter on
[learn.adacore.com](https://learn.adacore.com/courses/whats-new-in-ada-2022/chapters/container_aggregates.html).

## Addressed problem

The new container aggregate syntax in Ada 2022 addresses several issues with
constructing container objects:

- Awkwardness and limitations of current methods:

  Manually assembling containers with a series of statements is tedious and
  error-prone. This approach cannot be used in subprogram contracts (like
  postconditions). Existing constructors like To_Set are limited and often
  require cumbersome workarounds.

- Difficulty defining complex container structures:

  Comprehensions (nested iterators) are not currently possible for container
  initialization. Specifying single-element or empty containers requires awkward
  notation like null ranges.

- Lack of conciseness and readability:

  Current methods can make code lengthy and obscure, especially for complex
  container definitions. The new syntax simplifies expression and improves code
  clarity.

Overall, the new container aggregate syntax provides a more natural, flexible,
and powerful way to create and manipulate container objects in Ada 2022. It
eliminates the need for workarounds and cumbersome constructions, leading to
cleaner, more efficient, and easier-to-understand code.
