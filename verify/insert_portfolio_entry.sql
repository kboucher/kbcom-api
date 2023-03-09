-- Verify kbcom:insert_portfolio_entry on pg

BEGIN;

SELECT has_function_privilege('kbcom.insert_portfolio_entry(TEXT, TEXT, TEXT, JSONB[])', 'execute');

ROLLBACK;
