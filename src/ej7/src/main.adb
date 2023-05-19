With Ada.Text_IO; Use Ada.Text_IO;

With pkg_cuenta; Use pkg_cuenta;
With pkg_cliente; Use pkg_cliente;

procedure main is

   type Cliente_ptr is access Cliente;

   cuenta1 : Cuenta_ptr := new Cuenta ('A');
   cuenta2 : Cuenta_ptr := new Cuenta ('B');
   cuenta3 : Cuenta_ptr := new Cuenta ('C');
   cuenta4 : Cuenta_ptr := new Cuenta ('D');

   cli1 : Cliente_ptr := new Cliente (cuenta1, cuenta2, 100, 20, 30);
   cli2 : Cliente_ptr := new Cliente (cuenta3, cuenta4, 100, 200, 50);

begin
   
   null;

end main;

