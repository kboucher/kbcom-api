-- Deploy kbcom:insert_position to pg
-- requires: positions
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION kbcom.insert_position(
    title TEXT,
    organization TEXT,
    summary TEXT,
    details TEXT[],
    start_date DATE,
    end_date DATE
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO kbcom.positions VALUES(default, $1, $2, $3, $4, $5, $6);
$$;

COMMIT;
