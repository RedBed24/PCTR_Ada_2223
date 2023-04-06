with Ada.Text_IO;

package body pkg_sem is

   procedure wait (sem : in out sem_t) is
  
     begin

       loop

         select

            when sem = 0 =>
               sem := 1;
               exit;
         or

            await sem;

         end select;

      end loop;

   end wait;


   procedure signal (sem : in out sem_t) is

      begin

         select

            when sem = 1 =>
               sem := 0;

         end select;
    
      end signal;

end pkg_sem;