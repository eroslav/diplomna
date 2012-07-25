-- insert question types
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Стандартен въпрос с един отговор');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Стандартен въпрос с няколко отговора');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Въпрос тип "кошница"');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Въпрос за отбелязване по снимка');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Въпрос за наслагване');

-- insert answer types
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Стандартен отговор');
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Отговор на въпрос тип "кошница"');
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Отговор на въпрос за отбелязване по снимка');
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, 'Отговор на въпрос за наслагване');


-- commit
COMMIT;