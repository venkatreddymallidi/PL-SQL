declare
  no number;
  find number:=0;     --to find no of factors of a given no
begin
  dbms_output.put_line('Enter a number to check if it is prime or not');
  no:=:no;
  if no=1        -- if your given no is 1 then print below statement,stops
    then
    dbms_output.put_line(' 1 is neither prime nor composite');
  else           --if  given no is other than the we check for prime or not 
    for i in 1..no 
       loop
       if mod(no,i)=0   -- checking factors of a given
         then
         find:=find+1;    -- if factors found then count the factors
         end if;
      end loop;
  if find=2                 -- if factors found is 2(i.e.,1 and itself)
    then
    dbms_output.put_line(no||' is a prime number');
  else
    dbms_output.put_line(no||' not a prime number');
  end if;
  end if;
end;