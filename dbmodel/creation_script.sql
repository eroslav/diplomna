-- creates database schema v0.1

WHENEVER SQLERROR EXIT;
set verify off
set flush off

-- spool InstallLog.txt

@@tables/create_tables.sql
@@constraints/create_constraints.sql
@@sequences/create_sequences.sql
--@@procedures/create_procedures.sql
@@fill_initial_data.sql

begin
 dbms_utility.compile_schema(user);
end;
/
set flush on
prompt Schema installed
prompt 
disconnect;
spool off