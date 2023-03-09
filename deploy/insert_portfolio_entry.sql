-- Deploy kbcom:insert_portfolio_entry to pg
-- requires: portfolio_entries
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION kbcom.insert_portfolio_entry(
    title TEXT,
    summary TEXT,
    image TEXT,
    details JSONB[]
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO kbcom.portfolio_entries VALUES(default, $1, $2, $3, $4);
$$;

COMMIT;
