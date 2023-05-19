With Ada.Real_Time; Use Ada.Real_Time;
With Ada.Text_IO; Use Ada.Text_IO;

package body pkg_tarea is
   procedure A is
   begin
      Put ("[A"); delay 10.0; Put ("]");
   end A;

   procedure B is
   begin
      Put ("[B"); delay 8.0; Put ("]");
   end B;

   procedure C is
   begin
      Put ("[C"); delay 5.0; Put ("]");
   end C;

   procedure D is
   begin
      Put ("[D"); delay 4.0; Put ("]");
   end D;

   procedure E is
   begin
      Put ("[E"); delay 2.0; Put ("]");
   end E;

end pkg_tarea;

