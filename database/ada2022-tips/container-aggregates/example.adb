with Ada.Containers.Doubly_Linked_Lists;

procedure Example is
   package Int_Lists is new Ada.Containers.Doubly_Linked_Lists (Integer);
   List  : Int_Lists.List := [1, 2, 3];  --  instead of (1 => 5)
begin
   null;
end Example;