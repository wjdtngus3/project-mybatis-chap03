-- ī�װ� ���̺� ����
CREATE TABLE tbl_category
(
    category_code    NUMBER NOT NULL,
    category_name    VARCHAR2(30) NOT NULL,
    ref_category_code    NUMBER
);

COMMENT ON COLUMN tbl_category.category_code IS 'ī�װ��ڵ�';
COMMENT ON COLUMN tbl_category.category_name IS 'ī�װ���';
COMMENT ON COLUMN tbl_category.ref_category_code IS 'ī�װ� �����ڵ�';
COMMENT ON TABLE tbl_category IS 'ī�װ�';

-- ������ ���̺� ���� 
CREATE TABLE tbl_item
(
    item_code    NUMBER NOT NULL,
    item_name    VARCHAR2(50) NOT NULL,
    item_price    NUMBER NOT NULL,
    category_code    NUMBER NOT NULL
);
-- �ڸ�Ʈ
COMMENT ON COLUMN tbl_item.item_code IS '��ǰ�ڵ�';
COMMENT ON COLUMN tbl_item.item_name IS '��ǰ��';
COMMENT ON COLUMN tbl_item.item_price IS '��ǰ����';
COMMENT ON COLUMN tbl_item.category_code IS 'ī�װ��ڵ�';
COMMENT ON TABLE tbl_item IS '��ǰ';

--������ ����/ ���� 
DROP SEQUENCE SEQ_CATEGORY_CODE;
DROP SEQUENCE SEQ_MENU_CODE;

CREATE SEQUENCE SEQ_CATEGORY_CODE;
CREATE SEQUENCE SEQ_ITEM_CODE;


--ī�װ� ���̺� ��������
ALTER TABLE TBL_CATEGORY
ADD CONSTRAINT PK_CATEGORY_CODE PRIMARY KEY ( CATEGORY_CODE );

-- ���̺� �ߺ����� �� ����� �ذ�
SELECT ITEM_CODE, COUNT(*) FROM TBL_ITEM
GROUP BY ITEM_CODE
HAVING COUNT(*) > 1;

--������ ���̺� ��������
ALTER TABLE TBL_ITEM
ADD CONSTRAINT PK_ITEM_CODE PRIMARY KEY ( ITEM_CODE );

-- �ܷ�Ű �ֱ� 
ALTER TABLE TBL_ITEM
ADD CONSTRAINT FK_CATEGORY_CODE FOREIGN KEY ( CATEGORY_CODE )
REFERENCES TBL_CATEGORY ( CATEGORY_CODE );

-- ä���ֱ� 
INSERT 
INTO 
    TBL_CATEGORY 
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
,   '�������'
,    4
);



INSERT 
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
,   '���ڷ�'
,   5
);

INSERT 
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '����'
    , 6
);

INSERT 
INTO 
TBL_CATEGORY
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '�������'
    , 2
);

INSERT 
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '���̽�ũ��'
    , 1
);

INSERT 
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '����'
    , 7
);

INSERT 
INTO 
TBL_CATEGORY
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '������'
    , 8
);
INSERT
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , 'ä�ҷ�'
    , 9);
INSERT 
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '������ǰ��'
    , 10
);
INSERT 
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '�ַ�'
    , 11
);
INSERT 
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '���Ϸ�'
    , 12
);
INSERT
INTO 
TBL_CATEGORY 
( 
   CATEGORY_CODE
,  CATEGORY_NAME 
,  REF_CATEGORY_CODE
)
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
    , '�ҽ���'
    , 13
);

-- ��ǰ �ֱ� 
INSERT
INTO
TBL_ITEM
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��ħ�޻�'
    , 2000
    , 4
);

INSERT 
INTO 
TBL_ITEM
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
 
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��Ǫ����Ʈ'
    , 3000
    , 2
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��ũ�ٽ�'
    , 1500
    , 5
);
INSERT
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
 
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��Ĩ'
    , 1000
    , 5
);
INSERT 
INTO 
TBL_ITEM
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
 
)
VALUES 
    (SEQ_ITEM_CODE.NEXTVAL
    , '�Ұ��'
    , 13000
    ,7
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��'
    , 2000
    , 10
);
INSERT 
INTO
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
 
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��Ǫ'
    , 11000
    , 10
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '����'
    , 3000
    , 11
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '����'
    , 12000
    , 8
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '�Ҵߺ����ҽ�'
    , 5000
    , 12
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '���ϸ�'
    , 5000
    , 6
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��ũ����'
    , 1500
    , 1
);
INSERT
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '����'
    , 1000
    , 9
);
INSERT
INTO 
TBL_ITEM
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '���Ǵ�'
    , 1000
    , 4
);
INSERT
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '��ġ'
    , 4000
    , 8
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '���̽�'
    , 2300
    , 11
);
INSERT 
INTO 
TBL_ITEM
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
  
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '����'
    , 2000
    , 11
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVAL
    , '�����޻�'
    , 700
    , 6
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
)
VALUES 
(
SEQ_ITEM_CODE.NEXTVAL
    , '�����ݶ�'
    , 2000
    , 4
);
INSERT 
INTO 
TBL_ITEM 
(
   ITEM_CODE
  ,ITEM_NAME
  ,ITEM_PRICE
  ,CATEGORY_CODE
)
VALUES 
(
    SEQ_ITEM_CODE.NEXTVA
    , '��������'
    , 1200
    , 1
);