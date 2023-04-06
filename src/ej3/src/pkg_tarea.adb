With Ada.Text_IO; Use Ada.Text_IO;

package body pkg_tarea is

   task body tarea_periodica_t is

      TiempoActivacion : constant := 1000; 
      Periodo : constant := 2000; 
      TiempoEjecucion : constant := 1000; 
      variable : Integer := 0;

   begin

      loop
         delay To_Duration(TiempoActivacion);

         -- FIXME: qué es Clock?
         InicioEjecucion := Clock;
         -- FIXME: está bien la condición del bucle?
         while Clock - InicioEjecucion < TiempoEjecucion loop
            variable:= variable + 1;
         end loop;

         -- FIXME: qué es Current_Task?
         Put_Line ("Tarea(" & Image (Current_Task) & "):Variable interna: " & Integer'Image (variable));

         variable := 0;
         
         delay Periodo; 

      end loop;

  end tarea_periodica;

end pkg_tarea;

