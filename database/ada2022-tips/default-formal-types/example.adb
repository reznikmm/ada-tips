procedure Example is

   generic
      type Item_Count is range <>
        or use Natural;
   package Counts is
      Value : Item_Count;
   end Counts;

   package My_Counts is new Counts;
begin
   null;
end Example;