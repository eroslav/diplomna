-- insert question types
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '���������� ������ � ���� �������');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '���������� ������ � ������� ��������');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '������ ��� "�������"');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '������ �� ����������� �� ������');
INSERT INTO C_QUESTION_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '������ �� ����������');

-- insert answer types
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '���������� �������');
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '������� �� ������ ��� "�������"');
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '������� �� ������ �� ����������� �� ������');
INSERT INTO C_ANSWER_TYPE (ID, NAME) VALUES (SEQ_C_QUESTION_TYPE.NEXTVAL, '������� �� ������ �� ����������');


-- commit
COMMIT;