pragma Assertion_Policy (Check);

procedure Example is
   type Integer_Array is array (Positive range <>) of Integer;
   Base  : Integer_Array := [1, 2, 3];
   Next  : Integer_Array := [Base with delta 3 => 0];
begin
   pragma Assert (Next = [4, 2, 0]);
end Example;