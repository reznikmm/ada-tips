with Ada.Text_IO;
with Ada.Numerics.Elementary_Functions;
use Ada.Numerics.Elementary_Functions;

procedure Example is

   A : Float := 1.0;  --  Solving X*X + 2*X + 0.5 = 0
   B : Float := 2.0;
   C : Float := 0.5;

   R : array (Positive range <>) of Float :=
     (declare D : constant Float := B**2 - 4.0 * A * C;
      begin
        (if D < 0.0 then (1 .. 0 => <>)
         elsif D = 0.0 then (1 => -B / (2.0 * A))
         else ((-B + Sqrt (D)) / (2.0 * A),
               (-B - Sqrt (D)) / (2.0 * A))));
begin
   Ada.Text_IO.Put_Line (R'Image);
end Example;