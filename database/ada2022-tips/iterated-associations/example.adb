procedure Example is
   type Integer_Array is array (Positive range <>) of Integer;
   Values : Integer_Array := [for J in 1 .. 5 => J * 2];
begin
   pragma Assert (Values = [2, 4, 6, 8, 10]);
end Example;