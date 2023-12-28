with Ada.Containers.Doubly_Linked_Lists;

procedure Example is
   package Int_Lists is new Ada.Containers.Doubly_Linked_Lists (Integer);

   List  : Int_Lists.List := [1, 2, 4, 8];
   List_Sum : Integer := List'Reduce ("+", 0);

   Arr : array (1 .. 4) of Integer := [1, 2, 4, 8];
   Arr_Sum : Integer := Arr'Reduce ("+", 0);

   Expr_Sum : Integer :=
     [for J in 0 .. 3 => 2**J]'Reduce ("+", 0);
begin
   null;
end Example;