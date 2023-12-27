pragma Warning_As_Error ("unrecognized convention name");
with Interfaces.C;

procedure Example is
   procedure printf_int
     (format : Interfaces.C.char_array;
      value  : Interfaces.C.int)
        with Import,
          Convention    => C_Variadic_1,
          External_Name => "printf";

begin
   printf_int (Interfaces.C.To_C ("X=%d"), 5);
end Example;