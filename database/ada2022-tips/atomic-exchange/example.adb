with System.Atomic_Operations.Exchange;

procedure Example is
   type Atomic_Integer is new Integer with Atomic;

   package CAS is
     new System.Atomic_Operations.Exchange (Atomic_Integer);

   Value : aliased Atomic_Integer := 1;
   Prev  : aliased Atomic_Integer := 1;
begin
   if not CAS.Atomic_Compare_And_Exchange
     (Item => Value, Prior => Prev, Desired => 2)
   then
      raise Program_Error with "CAS failed";
   end if;
end Example;