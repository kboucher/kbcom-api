-- Revert kbcom:insert_portfolio_entry from pg

BEGIN;

DROP FUNCTION kbcom.insert_portfolio_entry(TEXT, TEXT, TEXT, JSONB[]);

COMMIT;
