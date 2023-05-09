With Ada.Text_IO; Use Ada.Text_IO;

With pkg_sem; Use pkg_sem;

With pkg_canibales;
With pkg_canibales.canibal;
With pkg_canibales.cocinero;

procedure main is

   NumRaciones : constant Positive := 10;
   NumCanibales : constant Positive := 4;

   type canibal_ptr is access pkg_canibales.canibal.canibal;
   type cocinero_ptr is access pkg_canibales.cocinero.cocinero;

   cani : canibal_ptr;
   coci : cocinero_ptr;
   olla : pkg_canibales.Olla_ptr; 

   despertar : sem_ptr := new Sem_t;
   rellenado : sem_ptr := new Sem_t;
   acceso : sem_ptr := new Sem_t;

   id : Character := 'A';

begin
   signal (acceso.all);
   
   olla := new pkg_canibales.Olla (NumRaciones);
   coci := new pkg_canibales.cocinero.Cocinero (olla, despertar, rellenado);

   for i in 1 .. NumCanibales loop
      cani := new pkg_canibales.canibal.Canibal (id, olla, despertar, rellenado, acceso);
      id := Character'Succ (id);
   end loop;

end main;

