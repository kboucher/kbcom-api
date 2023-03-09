-- Verify kbcom:appschema on pg

BEGIN;

SELECT pg_catalog.has_schema_privilege('kbcom', 'usage');

ROLLBACK;
