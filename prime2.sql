declare
  no number;
  find number:=0;     --to find no of factors of a given no
begin
  dbms_output.put_line('Enter a number to check if it is prime or not');
  no:=:no;         -- user input at run time
  if no=1        -- if your given no is 1 then print below statement,stops
    then
    dbms_output.put_line(' 1 is neither prime nor composite');
  else           --if  given no is other than the we check for prime or not 
    for i in 2..no-1    --we checking factors other than 1 and itself 
       loop
       if mod(no,i)=0   -- checking factors of a given
         then
         find:=find+1;    -- if factors found then count the factors 
         dbms_output.put_line(no||' not a prime number');
         exit;                -- if any found then not a prime then no need check, exit the loop
         end if;
      end loop;
  if find=0               -- no factors found except(i.e.,1 and itself)
    then
    dbms_output.put_line(no||' is a prime number');
   end if;
  end if;
end;