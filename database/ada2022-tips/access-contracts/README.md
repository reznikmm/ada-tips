# Pre/Post for access-to-subprogram types

> Ada 2022 now allows you to specify preconditions and postconditions directly
> on access-to-subprogram types
>
> ```ada
> type Even is access procedure (X : Integer)
>   with Pre => X mod 2 = 0;
> ```

## Addressed problem

Before Ada 2022, reasoning about calls through access-to-subprogram types was
tricky. You lacked crucial information about expected behavior, making static
analysis and ensuring consistent contracts difficult.

The new pre/post aspect feature for these types solves this. By defining
contracts directly on the access type, you gain clarity and reliability. Runtime
checks based on these contracts enforce desired behavior for all calls,
regardless of the specific subprogram called. This empowers static analysis
tools and leads to cleaner, more predictable code.
