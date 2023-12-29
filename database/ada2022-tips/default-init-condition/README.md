# Default_Initial_Condition for types

> Ensure consistent object initialization with Ada 2022's
> Default_Initial_Condition aspect! Define postconditions for default
> initialization of private types, catching potential issues early and enhancing
> code reliability.
>
> ```ada
> type Set is private
>   with Default_Initial_Condition => Is_Empty (Set);
> ```

## Addressed problem

The introduction of the Default_Initial_Condition contract aspect in Ada 2022
addresses a significant problem related to setting initial conditions for
objects during default initialization, particularly in the context of SPARK.
Without a mechanism to specify postconditions for default initialization, it
becomes challenging to ensure that stable properties of a type have the desired
initial values. This is crucial for maintaining consistency and correctness in
the behavior of objects, especially in scenarios where certain properties must
be explicitly defined after default initialization. The new feature provides a
solution by allowing users to define a boolean expression as a postcondition,
ensuring that specified conditions are met after the default initialization of
objects, thereby enhancing control and predictability in object initialization.

Overall, Default_Initial_Condition empowers developers to write more robust and
reliable code by taking greater control over object initialization and ensuring
desired consistency right from the start.
