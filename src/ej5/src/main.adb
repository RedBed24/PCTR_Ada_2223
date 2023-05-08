With Ada.Real_Time; Use Ada.Real_Time;
With Ada.Text_IO; Use Ada.Text_IO;
With pkg_tarea; Use pkg_tarea;

procedure main is
   HiperCiclo : constant Time_Span := Seconds(100);
   SubCiclo : constant Time_Span := Seconds(25);

   SiguienteLLamada : Time := Clock + SubCiclo;

begin

   loop
      -- Realizamos las tareas del SubCiclo
      Put ("[0: "); A; B; C; Put_Line("]");

      -- Esperamos al siguente SubCiclo
      delay until SiguienteLLamada;
      -- Calculamos cuándo toca el siguiente SubCiclo
      SiguienteLLamada := SiguienteLLamada + SubCiclo;

      Put ("[1: "); A; B; D; E; Put_Line("]");

      delay until SiguienteLLamada;
      SiguienteLLamada := SiguienteLLamada + SubCiclo;

      Put ("[2: "); A; B; C; Put_Line("]");

      delay until SiguienteLLamada;
      SiguienteLLamada := SiguienteLLamada + SubCiclo;

      Put ("[3: "); A; B; D; Put_Line("]");

      delay until SiguienteLLamada;
      SiguienteLLamada := SiguienteLLamada + SubCiclo;

   end loop;
end main;

