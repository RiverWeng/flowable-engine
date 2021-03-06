
UPDATE act_cmmn_databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = '192.168.10.1 (192.168.10.1)', LOCKGRANTED = '2020-10-06 16:04:33.557' WHERE ID = 1 AND LOCKED = FALSE;

ALTER TABLE ACT_CMMN_RU_CASE_INST ADD LOCK_OWNER_ VARCHAR(255);

INSERT INTO act_cmmn_databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('12', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', NOW(), 11, '7:e77f0eb21b221f823d6a0e198144cefc', 'addColumn tableName=ACT_CMMN_RU_CASE_INST', '', 'EXECUTED', NULL, NULL, '3.5.3', '1993073611');

ALTER TABLE ACT_CMMN_RU_PLAN_ITEM_INST ADD LAST_UNAVAILABLE_TIME_ TIMESTAMP(3) WITHOUT TIME ZONE;

ALTER TABLE ACT_CMMN_HI_PLAN_ITEM_INST ADD LAST_UNAVAILABLE_TIME_ TIMESTAMP(3) WITHOUT TIME ZONE;

INSERT INTO act_cmmn_databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('13', 'flowable', 'org/flowable/cmmn/db/liquibase/flowable-cmmn-db-changelog.xml', NOW(), 12, '7:c5ddabeb0c9fb8db6371c249097d78a3', 'addColumn tableName=ACT_CMMN_RU_PLAN_ITEM_INST; addColumn tableName=ACT_CMMN_HI_PLAN_ITEM_INST', '', 'EXECUTED', NULL, NULL, '3.5.3', '1993073611');

UPDATE act_cmmn_databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

