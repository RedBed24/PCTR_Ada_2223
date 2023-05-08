With Ada.Text_IO; Use Ada.Text_IO;
With Ada.Real_Time; Use Ada.Real_Time;
With Ada.Task_Identification; Use Ada.Task_Identification;

package body pkg_tarea is

   task body tarea_periodica_t is

      TiempoActivacion : constant Time_Span := Seconds (1); 
      Periodo : constant Time_Span := Milliseconds (2000); 
      TiempoEjecucion : constant Time_Span := Milliseconds (1000); 
      InicioEjecucion : Time;
      variable_entera : Integer;

   begin
      -- Como está en Time_Span pero se espera una duración, lo convertimos a duración
      delay To_Duration (TiempoActivacion);

      loop

         variable_entera := 0;

         -- Clock es una variable que nos proporciona el paquete Real_Time
         InicioEjecucion := Clock;
         while Clock - InicioEjecucion < TiempoEjecucion loop
            variable_entera := variable_entera + 1;
         end loop;

         -- Current_Task nos lo proporciona Task_Identification
         Put_Line ("Tarea(" & Image (Current_Task) & "): Variable interna: " & Integer'Image (variable_entera));

         delay To_Duration (Periodo); 

      end loop;

  end tarea_periodica_t;

end pkg_tarea;

