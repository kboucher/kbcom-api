-- Deploy kbcom:skills to pg
-- requires: appschema

BEGIN;

CREATE TYPE category AS ENUM ('JavaScript', 'HTML', 'CSS', 'Server-side', 'Tools');

CREATE TABLE kbcom.skills (
    id uuid DEFAULT gen_random_uuid() PRIMARY KEY,
    category    CATEGORY    NOT NULL,
    details     TEXT[]
);

COMMIT;
