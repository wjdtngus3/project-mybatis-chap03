-- 카테고리 테이블 생성
CREATE TABLE tbl_category
(
    category_code    NUMBER NOT NULL,
    category_name    VARCHAR2(30) NOT NULL,
    ref_category_code    NUMBER
);

COMMENT ON COLUMN tbl_category.category_code IS '카테고리코드';
COMMENT ON COLUMN tbl_category.category_name IS '카테고리명';
COMMENT ON COLUMN tbl_category.ref_category_code IS '카테고리 종류코드';
COMMENT ON TABLE tbl_category IS '카테고리';

-- 아이템 테이블 생성 
CREATE TABLE tbl_item
(
    item_code    NUMBER NOT NULL,
    item_name    VARCHAR2(50) NOT NULL,
    item_price    NUMBER NOT NULL,
    category_code    NUMBER NOT NULL
);
-- 코멘트
COMMENT ON COLUMN tbl_item.item_code IS '물품코드';
COMMENT ON COLUMN tbl_item.item_name IS '물품명';
COMMENT ON COLUMN tbl_item.item_price IS '물품가격';
COMMENT ON COLUMN tbl_item.category_code IS '카테고리코드';
COMMENT ON TABLE tbl_item IS '물품';

--시퀀스 삭제/ 생성 
DROP SEQUENCE SEQ_CATEGORY_CODE;
DROP SEQUENCE SEQ_MENU_CODE;

CREATE SEQUENCE SEQ_CATEGORY_CODE;
CREATE SEQUENCE SEQ_ITEM_CODE;


--카테고리 테이블 제약조건
ALTER TABLE TBL_CATEGORY
ADD CONSTRAINT PK_CATEGORY_CODE PRIMARY KEY ( CATEGORY_CODE );

-- 테이블 중복제거 다 지우고 해결
SELECT ITEM_CODE, COUNT(*) FROM TBL_ITEM
GROUP BY ITEM_CODE
HAVING COUNT(*) > 1;

--아이템 테이블 제약조건
ALTER TABLE TBL_ITEM
ADD CONSTRAINT PK_ITEM_CODE PRIMARY KEY ( ITEM_CODE );

-- 외래키 넣기 
ALTER TABLE TBL_ITEM
ADD CONSTRAINT FK_CATEGORY_CODE FOREIGN KEY ( CATEGORY_CODE )
REFERENCES TBL_CATEGORY ( CATEGORY_CODE );

-- 채워넣기 
INSERT 
INTO 
    TBL_CATEGORY 
VALUES 
(
    SEQ_CATEGORY_CODE.NEXTVAL
,   '음료수류'
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
,   '과자류'
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
    , '빵류'
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
    , '씨리얼류'
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
    , '아이스크림'
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
    , '고기류'
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
    , '생선류'
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
    , '채소류'
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
    , '가정용품류'
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
    , '주류'
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
    , '과일류'
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
    , '소스류'
    , 13
);

-- 물품 넣기 
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
    , '아침햇살'
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
    , '콘푸라이트'
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
    , '쿠크다스'
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
    , '썬칩'
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
    , '소고기'
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
    , '비누'
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
    , '샴푸'
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
    , '소주'
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
    , '고등어'
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
    , '불닭볶음소스'
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
    , '포켓몬빵'
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
    , '스크류바'
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
    , '상추'
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
    , '솔의눈'
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
    , '멸치'
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
    , '참이슬'
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
    , '진로'
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
    , '보름달빵'
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
    , '제로콜라'
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
    , '녹차마루'
    , 1200
    , 1
);