procedure Example is

   function Unexpected return Boolean
     with No_Return;

   function Unexpected return Boolean is
     (raise Program_Error with "Unexpected call");
begin
   null;
end Example;