\copy (SELECT data FROM pg_decoding_slot_get_changes('regression_slot', 'now', 'include-xids', '0')) TO '/tmp/testresult';
SELECT pg_drop_replication_slot('regression_slot');
