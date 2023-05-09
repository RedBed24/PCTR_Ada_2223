
package pkg_canibales is

   -- Objeto protegido Olla
   type Olla (Capacidad : Natural) is limited private;
   type Olla_ptr is access Olla;

   -- Interfaz para usar Olla
   procedure quedaComida (o : in out Olla; result : out Boolean);
   procedure cogerRacion (o : in out Olla);
   procedure rellenar (o : in out Olla);

private
   
   protected type Olla (Capacidad : Natural) is

      procedure quedaComida (result : out Boolean);
      procedure cogerRacion;
      procedure rellenar;
   private

      Raciones : Natural := Capacidad;
      CapacidadMaxima : Natural := Capacidad;
   end Olla;

end pkg_canibales;

