-- Drops all objects in schema
-- Ver1.0

DECLARE
i NUMBER(5) := 0;
w VARCHAR2(512);
CURSOR c1 IS SELECT object_name, object_type FROM user_objects
              WHERE object_type IN ('TABLE', 'PROCEDURE', 'FUNCTION',
                                    'PACKAGE', 'TYPE', 'SYNONYM',
                                    'VIEW', 'MATERIALIZED VIEW',
                                    'SEQUENCE', 'TRIGGER')
              ORDER BY object_type, object_name;
r1 c1%ROWTYPE;
BEGIN
  OPEN c1;
  LOOP 
    FETCH c1 INTO r1;
    IF c1%NOTFOUND THEN GOTO lab1; END IF;
    w := 'Drop '||r1.object_type||' '||r1.object_name;
    IF r1.object_type = 'TABLE' THEN
      w := w||' '||'cascade constraints';
    END IF;
    BEGIN 
      EXECUTE IMMEDIATE w;
    EXCEPTION WHEN OTHERS THEN NULL;
    END;
  END LOOP;
  <<lab1>>
  CLOSE c1;
  OPEN c1;
  LOOP 
    FETCH c1 INTO r1;
    IF c1%NOTFOUND THEN GOTO lab2; END IF;
    w := 'Drop '||r1.object_type||' '||r1.object_name;
    IF r1.object_type = 'TABLE' THEN
      w := w||' '||'cascade constraints';
    END IF;
    BEGIN 
      EXECUTE IMMEDIATE w;
      EXCEPTION WHEN OTHERS THEN NULL;
    END;
  END LOOP;
  <<lab2>>
  CLOSE c1;
  BEGIN
  	 EXECUTE IMMEDIATE 'purge recyclebin';
  	 EXCEPTION WHEN OTHERS THEN NULL;
  END;
END;
/

EXIT;