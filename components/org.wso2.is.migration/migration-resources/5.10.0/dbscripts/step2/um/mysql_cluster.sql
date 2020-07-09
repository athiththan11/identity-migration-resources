ALTER TABLE UM_USER ADD COLUMN UM_USER_ID CHAR(36) NOT NULL DEFAULT 'NONE';
UPDATE UM_USER SET UM_USER_ID = UUID();
ALTER TABLE UM_USER ADD UNIQUE(UM_USER_ID, UM_TENANT_ID);