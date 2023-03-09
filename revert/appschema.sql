-- Revert kbcom:appschema from pg

BEGIN;

DROP SCHEMA kbcom;

COMMIT;
