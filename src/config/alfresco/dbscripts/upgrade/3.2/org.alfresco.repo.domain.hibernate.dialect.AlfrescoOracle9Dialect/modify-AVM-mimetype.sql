--
-- Title:      Upgrade to V3.2 - modify AVM mimetype
-- Database:   ORACLE
-- Since:      V3.2 schema 2017
-- Author:     PaulWeb
-- contact paulandweb@gmail.com
--  modify AVM mimetype (increase column size)
--

ALTER TABLE avm_nodes MODIFY mime_type VARCHAR2(100);

--
-- Record script finish
--
DELETE FROM alf_applied_patch WHERE id = 'patch.db-V3.2-Modify-AVM-MimeType';
INSERT INTO alf_applied_patch
  (id, description, fixes_from_schema, fixes_to_schema, applied_to_schema, target_schema, applied_on_date, applied_to_server, was_executed, succeeded, report)
  VALUES
  (
    'patch.db-V3.2-Modify-AVM-MimeType', 'Manually executed script upgrade V3.2 to modify AVM mimetype',
     0, 2016, -1, 2017, sysdate, 'UNKOWN', 1, 1, 'Script completed'
   );
