
package body pkg_cuenta is

   function consultarID (o_cuenta : in out Cuenta) return Character is
   begin
      return o_cuenta.consultarID;
   end consultarID;

   function consultarSaldo (o_cuenta : in out Cuenta) return Natural is
   begin
      return o_cuenta.consultarSaldo;
   end consultarSaldo;

   function extraer (o_cuenta : in out Cuenta; cantidad : Natural) return Boolean is
      puedo_retirar : Boolean := cantidad <= o_cuenta.consultarSaldo;
   begin
      if puedo_retirar then
         o_cuenta.extraer (cantidad);
      end if;
      return puedo_retirar;
   end extraer;

   procedure ingresar (o_cuenta : in out Cuenta; cantidad : Natural) is
   begin
      o_cuenta.ingresar (cantidad);
   end ingresar;

   function transferir (cuenta_origen : in out Cuenta; cantidad : Natural; cuenta_destino : in out Cuenta) return Boolean is
      transferencia_realizada : Boolean;
   begin
      transferencia_realizada := extraer (cuenta_origen, cantidad);
      if transferencia_realizada then
         cuenta_destino.ingresar (cantidad);
      end if;
      return transferencia_realizada;
   end transferir;


   protected body Cuenta is

      function consultarID return Character is
      begin
         return id;
      end consultarID;

      function consultarSaldo return Natural is
      begin
         return saldo;
      end consultarSaldo;

      procedure extraer (cantidad : Natural) is
      begin
         saldo := saldo - cantidad;
      end extraer;

      procedure ingresar (cantidad : Natural) is
      begin
         saldo := saldo + cantidad;
      end ingresar;

   end Cuenta;

end pkg_cuenta;

