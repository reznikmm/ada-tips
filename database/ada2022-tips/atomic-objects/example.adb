procedure Example is

   type Status is record
      Ready    : Boolean;
      Length   : Integer range 0 .. 15;
      Reserved : Integer range 0 .. 2 ** 26 - 1;
   end record;

   for Status use record
      Ready    at 0 range 0 .. 0;
      Length   at 0 range 1 .. 5;
      Reserved at 0 range 6 .. 31;
   end record;

   Status_Register : Status
     with Size => 32,
          Atomic => True;

begin
   Status_Register.Ready := True;
   --  Read-modify-write operation on a 32-bit register
end Example;