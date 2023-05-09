
package body pkg_canibales is

   -- Implementación de la interfaz para usar la Olla
   procedure quedaComida (o : in out Olla; result : out Boolean) is
   begin
      o.quedaComida (result);
   end quedaComida;

   procedure cogerRacion (o : in out Olla) is 
   begin
      o.comer;
   end comer;

   procedure rellenar (o : in out Olla) is
   begin
      o.rellenar;
   end rellenar;

   protected body Olla is

      procedure quedaComida (result : out Boolean) is
      begin
         result := Raciones > 0;
      end quedaComida;

      procedure cogerRacion is
      begin
         Raciones := Raciones - 1;
      end comer;

      procedure rellenar is
      begin
         Raciones := CapacidadMaxima;
      end rellenar;

   end Olla;

end pkg_canibales;

