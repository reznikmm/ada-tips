with System.Atomic_Operations.Test_And_Set;
use System.Atomic_Operations.Test_And_Set;

procedure Example is
   Lock : aliased Test_And_Set_Flag := 0;
begin
   --  Acquire the lock
   while Atomic_Test_And_Set (Lock) loop
      null;  --  Value was non-zero
   end loop;
   --  Do stuff here
   Atomic_Clear (Lock);  --  Release the lock
end Example;