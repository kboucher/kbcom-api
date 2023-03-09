-- Revert kbcom:portfolio_entries from pg

BEGIN;

DROP TABLE kbcom.portfolio_entries;

COMMIT;
