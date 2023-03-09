-- Revert kbcom:positions from pg

BEGIN;

DROP TABLE kbcom.positions;

COMMIT;
