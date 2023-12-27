pragma Assertion_Policy (Check);
with Ada.Numerics.Big_Numbers.Big_Integers;
use Ada.Numerics.Big_Numbers.Big_Integers;

procedure Example is
   X : Big_Integer := 2**256;
   Y : Big_Integer := X / 3**150;
begin
   pragma Assert (Y = 312_961);
end Example;