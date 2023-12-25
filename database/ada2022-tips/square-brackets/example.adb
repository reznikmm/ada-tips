procedure Example is
   type Integer_Array is array (Positive range <>) of Integer;
   Empty : Integer_Array := [];   --  instead of (1 .. 0 => <>)
   Unit  : Integer_Array := [5];  --  instead of (1 => 5)
begin
   null;
end Example;