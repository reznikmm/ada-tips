procedure Example is

   protected Status is
      entry Start
        with Max_Entry_Queue_Length => 1;
   private
      Ready : Boolean := True;
   end Status;

   protected body Status is
      entry Start when Ready is
      begin
         Ready := False;
      end Start;
   end Status;

begin
   null;
end Example;