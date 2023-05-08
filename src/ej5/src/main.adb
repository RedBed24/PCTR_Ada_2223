With Ada.Real_Time; Use Ada.Real_Time;
With Ada.Text_IO; Use Ada.Text_IO;
With pkg_tarea; Use pkg_tarea;

procedure main is
   PeriodoSecundario : constant Time_Span := Seconds(25);

   SiguienteCiclo : Time := Clock + PeriodoSecundario;

begin

   loop
      -- Realizamos las tareas del ciclo secundario
      Put ("[0: "); A; B; C; Put_Line("]");

      -- Esperamos al siguente ciclo secundario
      delay until SiguienteCiclo;
      -- Calculamos cuándo toca el siguiente ciclo secundario
      SiguienteCiclo := SiguienteCiclo + PeriodoSecundario;

      Put ("[1: "); A; B; D; E; Put_Line("]");

      delay until SiguienteCiclo;
      SiguienteCiclo := SiguienteCiclo + PeriodoSecundario;

      Put ("[2: "); A; B; C; Put_Line("]");

      delay until SiguienteCiclo;
      SiguienteCiclo := SiguienteCiclo + PeriodoSecundario;

      Put ("[3: "); A; B; D; Put_Line("]");

      delay until SiguienteCiclo;
      SiguienteCiclo := SiguienteCiclo + PeriodoSecundario;

   end loop;
end main;

