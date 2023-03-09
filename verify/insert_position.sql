-- Verify kbcom:insert_position on pg

BEGIN;

SELECT has_function_privilege('kbcom.insert_position(TEXT, TEXT, TEXT, TEXT[], DATE, DATE)', 'execute');

ROLLBACK;
