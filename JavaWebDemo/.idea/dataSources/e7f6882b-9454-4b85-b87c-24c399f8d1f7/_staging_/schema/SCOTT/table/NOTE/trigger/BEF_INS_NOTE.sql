CREATE OR REPLACE TRIGGER BEF_INS_NOTE
BEFORE INSERT
  ON NOTE
FOR EACH ROW
  begin
    select  s_noteId.nextval into :NEW.noteId from dual;
    select  sysdate into :NEW.notetime from dual;
  end;
/
