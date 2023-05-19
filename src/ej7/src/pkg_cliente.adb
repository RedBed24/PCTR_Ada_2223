With Ada.Text_IO; Use Ada.Text_IO;
With pkg_cuenta; Use pkg_cuenta;

package body pkg_cliente is

   task body cliente is
   begin
      loop
         ingresar (mi1_cuenta.all, ingresos);
         if transferir (mi1_cuenta.all, tranferencia, mi2_cuenta.all) then
            Put_Line ("Transferidos correctamente" & Natural'Image (tranferencia) & "€ desde " & Character'Image (consultarID (mi1_cuenta.all)) & " a " & Character'Image (consultarID (mi2_cuenta.all)));
         else
            Put_Line ("No se han podido transferir" & Natural'Image (tranferencia) & "€ desde " & Character'Image (consultarID (mi1_cuenta.all)) & " a " & Character'Image (consultarID (mi2_cuenta.all)));
         end if;
         if extraer (mi2_cuenta.all, gastos) then
            Put_Line ("Retirados correctamente" & Natural'Image (gastos) & "€ de la cuenta " & Character'Image (consultarID (mi2_cuenta.all)));
         else
            Put_Line ("No se han podido retirar" & Natural'Image (gastos) & "€ de la cuenta " & Character'Image (consultarID (mi2_cuenta.all)));
         end if;

         Put_Line ("El saldo de la cuenta " & Character'Image (consultarID(mi1_cuenta.all)) & " es:" & Natural'Image (consultarSaldo (mi1_cuenta.all)));

         Put_Line ("El saldo de la cuenta " & Character'Image (consultarID(mi2_cuenta.all)) & " es:" & Natural'Image (consultarSaldo (mi2_cuenta.all)));
         delay 1.0;
      end loop;
   end cliente;

end pkg_cliente;

