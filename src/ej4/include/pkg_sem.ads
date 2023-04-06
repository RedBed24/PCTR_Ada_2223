package pkg_sem is
   type sem_t is limited private;
      procedure signal (sem : in out sem_t);
      procedure wait (sem : in out sem_t);
   private
      protected type sem_t (valor_inicial : Integer := 0) is
         entry wait;
         procedure signal;
      private
         valor_sem : Integer := valor_inicial;
   end sem_t;
end pkg_sem;

