-- Deploy kbcom:positions to pg
-- requires: appschema

BEGIN;

SET client_min_messages = 'warning';

CREATE TABLE kbcom.positions (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    title           TEXT    NOT NULL,
    organization    TEXT    NOT NULL,
    summary         TEXT,
    details         TEXT[],
    start_date       DATE    NOT NULL,
    end_date         DATE
);

COMMIT;
