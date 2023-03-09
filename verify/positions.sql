-- Verify kbcom:positions on pg

BEGIN;

SELECT title, organization, summary
    FROM kbcom.positions
    WHERE FALSE;

ROLLBACK;
