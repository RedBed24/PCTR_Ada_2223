with Ada.Real_Time; use Ada.Real_Time;
with Ada.Text_IO; use Ada.Text_IO;
with pkg_tarea; use pkg_tarea;

procedure main is

   tarea1 : tarea_periodica_t;

   tarea2 : tarea_periodica_t;

   begin
      delay 8.0;
      abort tarea1;
      abort tarea2;
      delay 2.0;
      Put_Line("Fin del programa.");

end main;