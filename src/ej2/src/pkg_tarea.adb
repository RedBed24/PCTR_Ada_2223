With Ada.Text_IO; Use Ada.Text_IO;

package body pkg_tarea is

   task body tarea_t is
      numPar : Integer := 0;
      numImpar : Integer := 0;

   begin
      loop
         select
            accept EsPar (N : in Integer) do
               begin
                  if N mod 2 = 0 then
                     Put_Line ("El número" & Integer'Image (N) & " es Par");
                     numPar := numPar + 1;
                  else
                     Put_Line ("El número" & Integer'Image (N) & " es impar");
                     numImpar := numImpar + 1;
                  end if;
               end;
            end EsPar;
         or
            accept EstadoConsultas do
                 Put_Line ("El número de números pares consultados es" & Integer'Image (numPar));
                 Put_Line ("El número de números impares consultados es" & Integer'Image (numImpar));
            end EstadoConsultas;
         end select;
      end loop;

   end tarea_t;

end pkg_tarea;

