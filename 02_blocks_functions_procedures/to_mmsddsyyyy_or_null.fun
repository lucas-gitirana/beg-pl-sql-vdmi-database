-- a function that converts varchar to a date value

CREATE OR REPLACE FUNCTION to_mmsddsyyyy_or_null(aiv_date IN varchar2) return date is 
begin 
	return to_date(aiv_date, 'MM/DD/YYYY')
exception 
	when others then 
	return null;
end to_mmsddsyyyy_or_null;
/
@fe.sql to_mmsddsyyyy_or_null;


select to_mmsddsyyyy_or_null('10/11/2003') from dual;