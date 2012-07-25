CREATE TABLE C_ANSWER_TYPE ( 
  ID        NUMBER (10)
     CONSTRAINT C_ANSWER_TYPE_ID_NN   NOT NULL, 
  NAME      VARCHAR2 (256 CHAR)
     CONSTRAINT C_ANSWER_TYPE_NAME_NN   NOT NULL, 
  IS_ACTIVE  CHAR (1)      DEFAULT 1
     CONSTRAINT C_ANSWER_TYPE_IS_ACTIVE_NN   NOT NULL, 
  LAST_UPD  DATE,
  CONSTRAINT C_ANSWER_TYPE_PK
  PRIMARY KEY ( ID ) ) ; 

COMMENT ON TABLE C_ANSWER_TYPE IS 'Classificator table. Provides various types of answers';

COMMENT ON COLUMN C_ANSWER_TYPE.ID IS 'Unique system number';
COMMENT ON COLUMN C_ANSWER_TYPE.NAME IS 'Name of the answer type';
COMMENT ON COLUMN C_ANSWER_TYPE.IS_ACTIVE IS 'Whether the record is visible or deleted';
COMMENT ON COLUMN C_ANSWER_TYPE.LAST_UPD IS 'Date of last modification';


CREATE OR REPLACE TRIGGER C_ANSWER_TYPE_BRIU_TRG BEFORE INSERT OR UPDATE ON C_ANSWER_TYPE FOR EACH ROW
BEGIN
	:NEW.LAST_UPD := SYSDATE;
END;
/
