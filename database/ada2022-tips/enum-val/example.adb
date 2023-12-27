pragma Assertion_Policy (Check);
procedure Example is
   type Gate_State is (Open, Closed);
   for Gate_State use (Open => 1, Closed => 9);

   Gate : Gate_State := Gate_State'Enum_Val (9);
   Int  : Integer := Gate_State'Enum_Rep (Gate);
begin
   pragma Assert (Gate = Closed);
   pragma Assert (Int = 9);
end Example;