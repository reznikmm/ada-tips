pragma Assertion_Policy (Check);

with System.Assertions;
with Ada.Text_IO;

procedure Example is

   type T1 is access procedure (X : Integer) with Pre => X mod 2 = 0;

   procedure P (X : Integer) is null;
   V : T1 := P'Access;
begin
   V.all (X => 1);
exception
   when System.Assertions.Assert_Failure =>
      Ada.Text_IO.Put_Line ("Ok!");
end Example;