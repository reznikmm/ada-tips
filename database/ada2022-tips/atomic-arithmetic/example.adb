with System.Atomic_Operations.Integer_Arithmetic;

procedure Example is
   type Atomic_Integer is new Integer with Atomic;

   package AIA is
     new System.Atomic_Operations.Integer_Arithmetic
      (Atomic_Integer);

   Value : aliased Atomic_Integer := 1;
begin
   if AIA.Atomic_Fetch_And_Subtract (Value, 1) = 0 then
      null;  --  Counter is zero
   end if;
end Example;