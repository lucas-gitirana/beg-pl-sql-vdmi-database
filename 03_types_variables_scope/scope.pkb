<<<<<<< HEAD
create or replace package body SCOPE as
    iv_scope varchar2(80) := 'I am an instance (or package body) variable';

    FUNCTION my_scope_is_instance return varchar2 is 
        v_answer_1 varchar2(3) := 'Yes';
        begin
            
=======
create or replace package body SCOPE as
    iv_scope varchar2(80) := 'I am an instance (or package body) variable';

    FUNCTION my_scope_is_instance return varchar2 is 
        v_answer_1 varchar2(3) := 'Yes';
        begin
            
>>>>>>> ddee3f76b3597226b427908a40eade43cbc9e549
        end;