-- Verify kbcom:skills on pg

BEGIN;

    -- Verify "category" enum type
    DO $$
    DECLARE
        type_count integer;
    BEGIN
        SELECT count(*)
        INTO type_count
        FROM pg_type
        WHERE typname = 'category';

        IF type_count = 0 THEN
            RAISE EXCEPTION 'Category enum not found';
        END IF;
    END
    $$;

    -- Verify table
    SELECT category, details
        FROM kbcom.skills
        WHERE FALSE;

ROLLBACK;
