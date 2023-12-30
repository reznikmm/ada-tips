# Compare-and-swap for atomic objects

> Ada 2022 brings atomic compare-and-swap for lock-free synchronization! Build
> faster, smoother concurrent programs with `System.Atomic_Operations.Exchange`.
>
> ```ada
> while not Atomic_Compare_And_Exchange
>   (Item => Value, Prior => Prev, Desired => Prev + 1)
> loop
> ```

## Addressed problem

Ada traditionally relied on locks for multithreaded synchronization, which can
be clunky and cause problems like:

- **Deadlocks**: When multiple threads wait for each other indefinitely,
  blocking progress.
- **Livelocks**: Threads keep trying to acquire a lock but constantly miss it,
  wasting resources.
- **Priority inversion**: Lower priority threads get stuck waiting for higher
  priority ones, slowing down execution.
- **Performance overhead**: Acquiring and releasing locks takes time, reducing
  efficiency.

Atomic compare-and-swap solves these problems by allowing threads to perform
operations on shared data without locks. It's like a tiny, precise handshake
between threads:

- Thread A tries to update a value, but only if it currently matches a specific
  expectation.
- If the values match, the update happens instantly, and Thread A proceeds.
- If the values don't match, the update fails, and Thread A tries again or takes
  another course of action.

This **try-before-you-do** approach eliminates the need for waiting and ensures
consistency in accessing shared data.

So, atomic compare-and-swap helps you build:

- More responsive and efficient concurrent programs.
- Deadlock-free, livelock-free, and priority-inversion-free code.
- Smoother multithreading operations with less overhead.

It's like unlocking a new level of performance and control for your Ada
applications!
