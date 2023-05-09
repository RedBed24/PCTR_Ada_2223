With pkg_sem;

package pkg_canibales.cocinero is

   task type cocinero (
      olla : Olla_ptr;
      despertar : pkg_sem.sem_ptr;
      rellenado : pkg_sem.sem_ptr
   );

end pkg_canibales.cocinero;

