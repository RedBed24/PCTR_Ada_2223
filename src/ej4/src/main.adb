with Ada.Text_IO;
with pkg_sem; use pkg_sem;

procedure main is

   sem : sem_t(0);

begin

   wait(sem);

   signal(sem);

end main;