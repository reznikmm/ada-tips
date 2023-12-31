# Jorvik Profile

> Ada 2022 introduces the `Jorvik` profile for real-time and embedded
> applications that need predictability, small memory footprint, and low
> execution overhead, but don't require the full stringency of the Ravenscar
> profile.
>
> ```ada
> pragma Profile (Jorvik);
> ```

## Addressed problem

The new Ada 2022 feature introduces the `Jorvik` profile as an addition to the
existing `Ravenscar` profile in Ada. The problem it addresses is the need for a
tasking profile that provides predictability, a small memory footprint, and low
execution overhead for real-time and embedded applications that do not require
the most stringent certification and safety analyses supported by the
`Ravenscar` profile.

The `Ravenscar` profile is designed for hard real-time applications that require
predictability, safety-critical systems with stringent certification
requirements, high-integrity applications needing formal static analysis and
verification, and embedded applications with a small memory footprint and low
execution overhead. However, some real-time and embedded applications may not
fit within the `Ravenscar` profile's subset and do not require the most
stringent certification/safety analyses.

The `Jorvik` profile addresses this gap by introducing a new tasking profile
that removes selected `Ravenscar` restrictions to enhance expressive power
without sacrificing the predictability required for timing and storage analyses.
The `Jorvik` profile allows for multiple protected entries per protected object,
multiple queued callers per protected entry, relative delay statements, and the
use of the `Ada.Calendar` package. It removes restrictions such as
`No_Implicit_Heap_Allocations`, `No_Relative_Delay`,
`Max_Entry_Queue_Length => 1`, `Max_Protected_Entries => 1`,
`No_Dependence => Ada.Calendar`, and
`No_Dependence => Ada.Synchronous_Barriers`. Additionally, it replaces the
`Simple_Barriers` restriction with a new `Pure_Barriers` restriction.

In summary, the `Jorvik` profile provides a more flexible tasking model compared
to `Ravenscar`, catering to real-time and embedded applications that do not
require the strict certification and safety analyses imposed by `Ravenscar` but
still need predictability, a small memory footprint, and low execution overhead.
