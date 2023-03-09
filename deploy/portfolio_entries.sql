-- Deploy kbcom:portfolio_entries to pg
-- requires: appschema

BEGIN;

CREATE TABLE kbcom.portfolio_entries (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    title   TEXT    NOT NULL,
    summary TEXT    NOT NULL,
    image   TEXT    NOT NULL,
    links   JSONB[]
);

COMMIT;

-- links (ids from links table?)
