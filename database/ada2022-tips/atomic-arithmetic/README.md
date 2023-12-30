# Arithmetic Atomic Operations

> Optimize multiprocessor synchronization with Ada 2022's new arithmetic atomic
> operations! Seamlessy increment counters, implement lock-free data structures,
> and enhance performance without the complexities of locks. Leverage the
> `System.Atomic_Operations.Integer_Arithmetic` (or `Modular_Arithmetic`)
> package for efficient atomic arithmetic.
>
> ```ada
> if Atomic_Fetch_And_Subtract (Value, 1) = 0 then
> ```

## Addressed problem

Ada 2022's arithmetic atomic operations tackle the challenges of synchronization
on multiprocessor platforms, which traditionally rely on locks. Locks can
introduce issues such as:

- Progress guarantees: Blocked tasks can impede system-wide progress.
- Deadlocks, livelocks, and priority inversion. Reduced performance and
  parallelism.

Atomic operations provide a more efficient and robust approach to
synchronization, ensuring:

- Guaranteed progress, even in multi-threaded environments.
- Avoidance of common lock-related issues. Enhanced performance through reduced
  serialization.

Overall, new atomic arithmetic operations empower smooth multiprocessor
synchronization with rock-solid performance.
