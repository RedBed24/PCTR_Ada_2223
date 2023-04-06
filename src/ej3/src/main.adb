with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO; use Ada.Text_IO;
with pkg_tarea;

procedure main is

   tarea1 : pkg_tarea.tarea_periodica;

   tarea2 : pkg_tarea.tarea_periodica;

   begin
      delay 8.0;
      abort tarea1;
      abort tarea2;
      delay 2.0;
      Put_Line("Fin del programa.");

end main;