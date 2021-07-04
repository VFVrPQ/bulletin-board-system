
grant connect, resource, create view to scott
/

create sequence s_noteId increment by 1;

CREATE TABLE note (
  noteId number(11) NOT NULL,
  noteNumber varchar2(45) NOT NULL,
  noteName varchar2(255) NOT NULL,
  noteType varchar2(45) default '普通' NOT NULL,
  noteOwner varchar2(45) NOT NULL,
  noteTime date default sysdate,
  PRIMARY KEY (noteId)
);

create or replace trigger bef_ins_note
before insert on note
for each row
begin
select  s_noteId.nextval into :NEW.noteId from dual;
end;
/

alter table note add CONSTRAINT NOTE_TYPE check(noteType='普通' or noteType='置顶');

CREATE TABLE "user" (
  userName varchar2(255) DEFAULT NULL,
  userId varchar2(45) NOT NULL,
  userSex varchar2(8) DEFAULT '女',
  userType varchar2(10) DEFAULT '学生',
  userPwd varchar2(45) NOT NULL,
  PRIMARY KEY (userId)
);

alter table "user" add CONSTRAINT USER_SEX CHECK (userSex='男' or userSex='女' or userSex='保密');
alter table "user" add CONSTRAINT USER_TYPE check(userType='学生' or userType='老师');

CREATE TABLE usernote (
  noteId number(11),
  userId varchar2(45),
  floorNumber number(11) NOT NULL,
  content varchar2(4000) DEFAULT NULL,
  floorType varchar2(45) DEFAULT '显示',
  floorTime date DEFAULT sysdate,
  PRIMARY KEY (noteId,floorNumber),
  FOREIGN KEY (noteId) REFERENCES note(noteId),
  FOREIGN KEY (userId) REFERENCES "user"(userId)
);

alter table USERNOTE add CONSTRAINT  USERNOTE_FLOORTYPE check (FLOORTYPE='隐藏' or FLOORTYPE='删除' or FLOORTYPE='显示');

CREATE OR REPLACE VIEW noteList (noteId , noteNumber , noteName , 
noteType , noteOwner , noteTime , 
userId , content , userName , "number") AS
    SELECT 
        note.noteId,
        note.noteNumber,
        note.noteName,
        note.noteType,
        note.noteOwner,
        note.noteTime,
        usernote.userId,
        usernote.content,
        "user".userName,
        countab.ncount
    FROM
        note,
        usernote,
        "user",
        (SELECT
            note.noteId,
            COUNT(*) ncount
        FROM 
            note,
            usernote,
            "user"
        WHERE
            note.noteId = usernote.noteId
                AND "user".userId = usernote.userId
                AND usernote.floorNumber = 1
        GROUP BY note.noteId) countab
    WHERE
        note.noteId = usernote.noteId
            AND "user".userId = usernote.userId
            AND usernote.floorNumber = 1
            AND countab.noteId = note.noteId
    ORDER BY note.noteTime DESC;
/


CREATE OR REPLACE VIEW "comment" (noteId , userId , floorNumber , content , floorType , floorTime , userName) AS
    SELECT
        usernote.noteId,
        usernote.userId,
        usernote.floorNumber,
        usernote.content,
        usernote.floorType,
        usernote.floorTime,
        "user".userName
    FROM
        usernote,
        "user"
    WHERE
        usernote.userId = "user".userId
            AND usernote.floorNumber != 1
    ORDER BY floorNumber DESC
/