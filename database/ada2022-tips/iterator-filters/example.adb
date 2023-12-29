procedure Example is

   Text : String := "a.b.c.d";

   Even_Dots : Boolean :=
     (for all J in Text'Range when J mod 2 = 0 =>
        Text(J) = '.');

begin
   for J in Text'Range when J mod 2 = 0 loop
      null;
   end loop;
end Example;