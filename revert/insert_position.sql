-- Revert kbcom:insert_position from pg

BEGIN;

DROP FUNCTION kbcom.insert_position(TEXT, TEXT, TEXT, TEXT[], DATE, DATE);

COMMIT;
