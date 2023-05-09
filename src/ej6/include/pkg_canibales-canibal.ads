
With pkg_sem;

package pkg_canibales.canibal is

   min_tiempo_baile : constant Duration := 1.0;
   max_tiempo_baile : constant Duration := 4.0;
   tiempo_comida : constant Duration := 1.0;

   task type canibal (
      identificador : Character;
      olla : Olla_ptr;
      despertar : pkg_sem.sem_ptr;
      rellenado : pkg_sem.sem_ptr;
      acceso_olla : pkg_sem.sem_ptr
   );

end pkg_canibales.canibal;

