With Ada.Text_IO;
With Ada.Numerics.Float_Random;

With pkg_sem;

With pkg_canibales;

package body pkg_canibales.canibal is

   task body canibal is

      procedure bailar is
         gen : Ada.Numerics.Float_Random.Generator;
         tiempo : Duration;
      begin
         Ada.Numerics.Float_Random.reset(gen);
         tiempo := (max_tiempo_baile - min_tiempo_baile) * Duration(Ada.Numerics.Float_Random.Random (gen)) + min_tiempo_baile;
         Ada.Text_IO.Put_Line (Character'Image (identificador) & " baila durante" & Duration'Image (tiempo) & " segundos");
         delay tiempo;
      end bailar;

      procedure comer is
         puedoComer : Boolean;
      begin
         pkg_sem.wait (acceso_olla.all);
            quedaComida (olla.all, puedoComer);

            if not puedoComer then
               pkg_sem.signal (despertar.all);
               pkg_sem.wait (rellenado.all);
            end if;

            Ada.Text_IO.Put_Line (Character'Image (identificador) & " va a comer");
            cogerRacion (olla.all);

         pkg_sem.signal (acceso_olla.all);

         delay tiempo_comida;
      end comer;

   begin
      loop
         bailar;
         comer;
      end loop;
   end canibal;

end pkg_canibales.canibal;

