# Target Name Symbol

> Improve readability and simplify assignment statements in Ada 2022 by using
> the new `@` symbol as an abbreviation for the left-hand side of an assignment.
> For example:
>
>     Vector (Index).Counter := @ + 1;

## Addressed problem

The main problem being addressed by the new `@` symbol in Ada 2022 is verbosity
and readability in assignment statements, particularly when dealing with:

- **Long variable names**: Repeating a complex variable name within an
  assignment can be cumbersome and make the code hard to read.
- **Dynamic addressing**: If an assignment involves manipulating elements of an
  array with dynamic indices, the expression for the left-hand side can become
  quite lengthy and repetitive.

This can lead to:

- **Reduced maintainability**: Code with verbose assignments is harder to
  understand and modify.
- **Potential typos**: The risk of making mistakes increases when typing the
  same name multiple times.
- **Loss of focus**: Excessive repetition can distract from the core logic of
  the assignment.

The `@` symbol solves these issues by providing a concise and unambiguous
abbreviation for the left-hand side of the assignment. This allows programmers
to:

- Write cleaner and more readable code: By replacing the lengthy name with a
  single symbol, the assignment becomes more focused and easier to understand.
- Reduce the risk of errors: With less typing involved, the chances of typos or
  other mistakes decrease.
- Improve maintainability: Simpler code is easier to modify and update in the
  future.

Overall, the `@` symbol aims to enhance the coding experience in Ada by promoting
both readability and efficiency.
