-- Deploy kbcom:insert_skill to pg
-- requires: skills
-- requires: appschema

BEGIN;

CREATE OR REPLACE FUNCTION kbcom.insert_skill(
    category CATEGORY,
    details TEXT[]
) RETURNS VOID LANGUAGE SQL SECURITY DEFINER AS $$
    INSERT INTO kbcom.skills VALUES(default, $1, $2);
$$;

COMMIT;
