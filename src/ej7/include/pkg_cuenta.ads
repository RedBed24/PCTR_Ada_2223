
package pkg_cuenta is

   type Cuenta (identificador : Character) is limited private;

   function consultarID (o_cuenta : in out Cuenta) return Character;
   function consultarSaldo (o_cuenta : in out Cuenta) return Natural;

   function extraer (o_cuenta : in out Cuenta; cantidad : Natural) return Boolean;
   procedure ingresar (o_cuenta : in out Cuenta; cantidad : Natural);

   function transferir (cuenta_origen : in out Cuenta; cantidad : Natural; cuenta_destino : in out Cuenta) return Boolean;

private

   protected type Cuenta (identificador : Character) is

      function consultarID return Character;
      function consultarSaldo return Natural;
      procedure extraer (cantidad : Natural);
      procedure ingresar (cantidad : Natural);

   private
      
      id : Character := identificador;
      saldo : Natural := 0;

   end Cuenta;

end pkg_cuenta;

