-- Verify kbcom:insert_skill on pg

BEGIN;

SELECT has_function_privilege('kbcom.insert_skill(CATEGORY, TEXT[])', 'execute');

ROLLBACK;
