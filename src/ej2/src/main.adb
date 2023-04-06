With Ada.Text_IO; Use Ada.Text_IO;

With pkg_procedure; Use pkg_procedure;
With pkg_tarea; Use pkg_tarea;

procedure main is

	tarea: tarea_t;
   Numero : Integer;

begin
   -- Bucle infinito
   loop
      -- mostrar consultas

		tarea.EstadoConsultas;
      Leer_Entero (Numero);

      if Numero = 0 then
         exit;
		end if;

		tarea.EsPar (Numero);

   end loop;

   abort tarea;

end main;

