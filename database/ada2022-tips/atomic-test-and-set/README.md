# Atomic Test and Set Operations

> Enhance multiprocessor performance and synchronization in Ada 2022 with atomic
> operations like test-and-set for efficient spin locks and lock-free data
> structures. Explore the new `System.Atomic_Operations.Test_And_Set` package
> for seamless hardware-level control!
>
> ```ada
> --  Acquire the lock
> while Atomic_Test_And_Set (Lock) loop
>    null;  --  Value was non-zero
> end loop;
> ```

## Addressed problem

Traditional locks for synchronization in multiprocessor systems can be clunky
and slow down progress. They introduce overhead, bottleneck parallelism, and can
even lead to deadlocks or unfair prioritization. Existing atomic operations,
while helpful, lacked the finesse needed for certain tasks like building
efficient spin locks.

Ada 2022 steps in with new atomic operations and test-and-set capabilities.
These features let developers directly access hardware instructions, enabling
smoother multithreaded code. Lock-free data structures and efficient spin locks
become possible, boosting performance and concurrency.

Overall, Ada 2022's atomic enhancements unlock smoother, more parallelized
multithreaded programs.
