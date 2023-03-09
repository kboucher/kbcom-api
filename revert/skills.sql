-- Revert kbcom:skills from pg

BEGIN;

DROP TABLE kbcom.skills;
DROP TYPE category;

COMMIT;
