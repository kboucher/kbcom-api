-- Verify kbcom:portfolio_entries on pg

BEGIN;

SELECT id, title, summary, image, links
    FROM kbcom.portfolio_entries
    WHERE FALSE;

ROLLBACK;
