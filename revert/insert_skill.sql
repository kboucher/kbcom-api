-- Revert kbcom:insert_skill from pg

BEGIN;

DROP FUNCTION kbcom.insert_skill(CATEGORY, TEXT[]);

COMMIT;
