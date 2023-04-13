With Ada.Text_IO; Use Ada.Text_IO;
With pkg_tarea; Use pkg_tarea;

procedure main is

   tarea1 : tarea_periodica_t;
   tarea2 : tarea_periodica_t;

begin
   delay 8.0;
   abort tarea1;
   abort tarea2;
   delay 2.0;
   Put_Line ("Fin del programa.");

end main;

