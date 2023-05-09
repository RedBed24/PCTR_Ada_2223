With Ada.Text_IO;

With pkg_sem;

package body pkg_canibales.cocinero is

   task body cocinero is
   begin
      loop
         pkg_sem.wait (despertar.all);
         rellenar (olla.all);
         Ada.Text_IO.Put_Line ("----[El cocinero ha rellenado la olla]----");
         pkg_sem.signal (rellenado.all);
      end loop;
   end cocinero;

end pkg_canibales.cocinero;

