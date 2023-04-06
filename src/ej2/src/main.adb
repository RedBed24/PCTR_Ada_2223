With Ada.Text_IO; Use Ada.Text_IO;

With pkg_procedure; Use pkg_procedure;
--With pkg_tarea; Use pkg_tarea;

procedure main is

   Numero : Integer;

begin
   -- Bucle infinito
   loop
      -- mostrar consultas
      Leer_Entero (Numero);

      if Numero = 0 then
         exit;
      elsif Numero mod 2 = 0 then
         Put ("Es par"); New_Line;
      else
         Put ("Es impar"); New_Line;
      end if;
   end loop;

   --abort tarea;
   Put ("Terminando Ejecución"); New_Line;

end main;

