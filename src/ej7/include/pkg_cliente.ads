With pkg_cuenta; Use pkg_cuenta;

package pkg_cliente is

   type Cuenta_ptr is access Cuenta;

   task type cliente (
      mi1_cuenta : Cuenta_ptr;
      mi2_cuenta : Cuenta_ptr;
      ingresos : Natural;
      tranferencia : Natural;
      gastos : Natural
   );

end pkg_cliente;

