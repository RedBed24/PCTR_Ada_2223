with Ada.Text_IO;

package body pkg_tarea is

   task body tarea_periodica is

      TiempoActivacion : constant := 1000; 
      Periodo : constant := 2000; 
      TiempoEjecucion : constant := 1000; 
      variable : Integer := 0;

   begin

      loop
         delay To_Duration(TiempoActivacion);

         InicioEjecucion := Clock;
         while Clock - InicioEjecucion < TiempoEjecucion loop
            variable:= variable + 1;
            end loop;

         Put_Line("Tarea("&Image(Current_Task)&"):Variable interna: " & Integer'Image(variable));

         variable := 0;
         
         delay Periodo; 

    end loop;

 end tarea_periodica;

end pkg_tarea;