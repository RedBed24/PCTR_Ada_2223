With Ada.Text_IO; Use Ada.Text_IO;
With pkg_sem; Use pkg_sem;

procedure main is

   sem : sem_t(0);

begin

   Put ("Esperando..."); New_Line;

   wait(sem);

   Put ("Señalizando..."); New_Line;

   signal(sem);

   Put ("Finalizando..."); New_Line;

end main;

