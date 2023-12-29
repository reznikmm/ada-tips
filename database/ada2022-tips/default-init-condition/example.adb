pragma Assertion_Policy (Check);

procedure Example is

   package Sets is
      type Set is private
         with Default_Initial_Condition => Is_Empty (Set);

      function Is_Empty (S : Set) return Boolean;
   private
      type Set is null record;
      function Is_Empty (S : Set) return Boolean is (True);
   end Sets;

   S : Sets.Set;
begin
   null;
end Example;