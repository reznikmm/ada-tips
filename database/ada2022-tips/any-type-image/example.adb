procedure Example is
   Tuple : array (1 .. 3) of Integer := (others => 0);
begin
   Tuple (3) := @ + 1;  --  Increment the last element
end Example;