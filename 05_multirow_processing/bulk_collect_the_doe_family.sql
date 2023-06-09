set serveroutput on size 1000000;

declare
    TYPE worker_table is table of WORKERS.first_name%TYPE index by binary_integer;
    t_workers worker_table;
begin 
    select first_name
    BULK COLLECT
    into t_workers
    from WORKERS
    where last_name like 'DOE%'
    order by id;

    for i in t_workers.first..t_workers.last loop
        SYS.DBMS_OUTPUT.put_line(t_workers(i));
    end loop;
end;
/