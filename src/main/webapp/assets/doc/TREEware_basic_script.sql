ALTER TABLE EMP
	DROP
		CONSTRAINT FK_DPT_TO_EMP
		CASCADE;

ALTER TABLE EMP
	DROP
		CONSTRAINT FK_PST_TO_EMP
		CASCADE;

ALTER TABLE EMP
	DROP
		CONSTRAINT FK_PMS_TO_EMP
		CASCADE;

ALTER TABLE EMP
	DROP
		CONSTRAINT FK_RNK_TO_EMP
		CASCADE;

ALTER TABLE SCD
	DROP
		CONSTRAINT FK_EMP_TO_SCD
		CASCADE;

ALTER TABLE SCD
	DROP
		CONSTRAINT FK_SCD_DIV_TO_SCD
		CASCADE;

ALTER TABLE BRD
	DROP
		CONSTRAINT FK_BRD_DIV_TO_BRD
		CASCADE;

ALTER TABLE BRD
	DROP
		CONSTRAINT FK_EMP_TO_BRD
		CASCADE;

ALTER TABLE ADDR
	DROP
		CONSTRAINT FK_ADDR_GRP_TO_ADDR
		CASCADE;

ALTER TABLE ML
	DROP
		CONSTRAINT FK_ML_IPT_TO_ML
		CASCADE;

ALTER TABLE ML
	DROP
		CONSTRAINT FK_ML_STT_TO_ML
		CASCADE;

ALTER TABLE ML
	DROP
		CONSTRAINT FK_ML_GRP_TO_ML
		CASCADE;

ALTER TABLE CMT
	DROP
		CONSTRAINT FK_EMP_TO_CMT
		CASCADE;

ALTER TABLE EMP_PIC
	DROP
		CONSTRAINT FK_EMP_TO_EMP_PIC
		CASCADE;

ALTER TABLE ADDR_GRP
	DROP
		CONSTRAINT FK_EMP_TO_ADDR_GRP
		CASCADE;

ALTER TABLE ML_GRP
	DROP
		CONSTRAINT FK_EMP_TO_ML_GRP
		CASCADE;

ALTER TABLE BRD_DIV
	DROP
		CONSTRAINT FK_CATEGORY_TO_BRD_DIV
		CASCADE;

ALTER TABLE RPL
	DROP
		CONSTRAINT FK_BRD_TO_RPL
		CASCADE;

ALTER TABLE APV_FORM
	DROP
		CONSTRAINT FK_APV_FORM_DIV_TO_APV_FORM
		CASCADE;

ALTER TABLE APV
	DROP
		CONSTRAINT FK_APV_FORM_TO_APV
		CASCADE;

ALTER TABLE APV
	DROP
		CONSTRAINT FK_EMP_TO_APV
		CASCADE;

ALTER TABLE APV
	DROP
		CONSTRAINT FK_APV_OK_TO_APV
		CASCADE;

ALTER TABLE EMP
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PMS
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE DPT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE RNK
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE SCD
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE BRD
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ADDR
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE CMT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV_OK
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE EMP_PIC
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE PST
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ADDR_GRP
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML_STT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML_GRP
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE ML_IPT
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE BRD_DIV
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE RPL
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV_FORM_DIV
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV_FORM
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE APV
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE SCD_DIV
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

ALTER TABLE CATEGORY
	DROP
		PRIMARY KEY
		CASCADE
		KEEP INDEX;

/* 사원 */
DROP TABLE EMP 
	CASCADE CONSTRAINTS;

/* 권한 */
DROP TABLE PMS 
	CASCADE CONSTRAINTS;

/* 부서 */
DROP TABLE DPT 
	CASCADE CONSTRAINTS;

/* 직위 */
DROP TABLE RNK 
	CASCADE CONSTRAINTS;

/* 일정 */
DROP TABLE SCD 
	CASCADE CONSTRAINTS;

/* 게시판 */
DROP TABLE BRD 
	CASCADE CONSTRAINTS;

/* 주소록 */
DROP TABLE ADDR 
	CASCADE CONSTRAINTS;

/* 메일함 */
DROP TABLE ML 
	CASCADE CONSTRAINTS;

/* 출퇴근 */
DROP TABLE CMT 
	CASCADE CONSTRAINTS;

/* 결재승인 */
DROP TABLE APV_OK 
	CASCADE CONSTRAINTS;

/* 기본정보사진 */
DROP TABLE EMP_PIC 
	CASCADE CONSTRAINTS;

/* 직책 */
DROP TABLE PST 
	CASCADE CONSTRAINTS;

/* 주소록그룹 */
DROP TABLE ADDR_GRP 
	CASCADE CONSTRAINTS;

/* 메일상태 */
DROP TABLE ML_STT 
	CASCADE CONSTRAINTS;

/* 메일그룹 */
DROP TABLE ML_GRP 
	CASCADE CONSTRAINTS;

/* 메일중요도 */
DROP TABLE ML_IPT 
	CASCADE CONSTRAINTS;

/* 게시판구분 */
DROP TABLE BRD_DIV 
	CASCADE CONSTRAINTS;

/* 댓글 */
DROP TABLE RPL 
	CASCADE CONSTRAINTS;

/* 결재양식분류 */
DROP TABLE APV_FORM_DIV 
	CASCADE CONSTRAINTS;

/* 결재양식 */
DROP TABLE APV_FORM 
	CASCADE CONSTRAINTS;

/* 전자결재 */
DROP TABLE APV 
	CASCADE CONSTRAINTS;

/* 일정분류 */
DROP TABLE SCD_DIV 
	CASCADE CONSTRAINTS;

/* 카테고리 */
DROP TABLE CATEGORY 
	CASCADE CONSTRAINTS;

/* 사원 */
CREATE TABLE EMP (
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	PMS_SQ NUMBER NOT NULL, /* 권한번호 */
	DPT_SQ NUMBER NOT NULL, /* 부서번호 */
	RNK_SQ NUMBER NOT NULL, /* 직위번호 */
	PST_SQ NUMBER NOT NULL, /* 직책번호 */
	EMP_NM VARCHAR2(100) NOT NULL, /* 이름 */
	EMP_ID VARCHAR2(100) NOT NULL, /* 아이디 */
	EMP_PW VARCHAR2(100) NOT NULL, /* 비밀번호 */
	EMP_SEX VARCHAR2(10) NOT NULL, /* 성별 */
	EMP_BDATE VARCHAR2(100) NOT NULL, /* 생년월일 */
	EMP_ML_ID VARCHAR2(100) NOT NULL, /* 이메일아이디 */
	EMP_ML_ADDR VARCHAR2(100) NOT NULL, /* 이메일주소 */
	EMP_TEL1 VARCHAR2(10) NOT NULL, /* 휴대전화번호1 */
	EMP_TEL2 VARCHAR2(10) NOT NULL, /* 휴대전화번호2 */
	EMP_TEL3 VARCHAR2(10) NOT NULL, /* 휴대전화번호3 */
	EMP_ZIP VARCHAR2(10) NOT NULL, /* 우편번호 */
	EMP_ADDR VARCHAR2(500) NOT NULL, /* 기본주소 */
	EMP_ADDR_DT VARCHAR2(500) NOT NULL, /* 상세주소 */
	EMP_BS_TEL1 VARCHAR2(10), /* 회사전화번호1 */
	EMP_BS_TEL2 VARCHAR2(10), /* 회사전화번호2 */
	EMP_BS_TEL3 VARCHAR2(10), /* 회사전화번호3 */
	EMP_CRT VARCHAR2(300), /* 자격증 */
	EMP_REG DATE NOT NULL, /* 입사일 */
	EMP_EXIT DATE, /* 퇴사일 */
	EMP_FNL_MOD DATE NOT NULL /* 최종수정일 */
);

COMMENT ON TABLE EMP IS '사원';

COMMENT ON COLUMN EMP.EMP_SQ IS '사원번호';

COMMENT ON COLUMN EMP.PMS_SQ IS '권한번호';

COMMENT ON COLUMN EMP.DPT_SQ IS '부서번호';

COMMENT ON COLUMN EMP.RNK_SQ IS '직위번호';

COMMENT ON COLUMN EMP.PST_SQ IS '직책번호';

COMMENT ON COLUMN EMP.EMP_NM IS '이름';

COMMENT ON COLUMN EMP.EMP_ID IS '아이디';

COMMENT ON COLUMN EMP.EMP_PW IS '비밀번호';

COMMENT ON COLUMN EMP.EMP_SEX IS '성별';

COMMENT ON COLUMN EMP.EMP_BDATE IS '생년월일';

COMMENT ON COLUMN EMP.EMP_ML_ID IS '이메일아이디';

COMMENT ON COLUMN EMP.EMP_ML_ADDR IS '이메일주소';

COMMENT ON COLUMN EMP.EMP_TEL1 IS '휴대전화번호1';

COMMENT ON COLUMN EMP.EMP_TEL2 IS '휴대전화번호2';

COMMENT ON COLUMN EMP.EMP_TEL3 IS '휴대전화번호3';

COMMENT ON COLUMN EMP.EMP_ZIP IS '우편번호';

COMMENT ON COLUMN EMP.EMP_ADDR IS '기본주소';

COMMENT ON COLUMN EMP.EMP_ADDR_DT IS '상세주소';

COMMENT ON COLUMN EMP.EMP_BS_TEL1 IS '회사전화번호1';

COMMENT ON COLUMN EMP.EMP_BS_TEL2 IS '회사전화번호2';

COMMENT ON COLUMN EMP.EMP_BS_TEL3 IS '회사전화번호3';

COMMENT ON COLUMN EMP.EMP_CRT IS '자격증';

COMMENT ON COLUMN EMP.EMP_REG IS '입사일';

COMMENT ON COLUMN EMP.EMP_EXIT IS '퇴사일';

COMMENT ON COLUMN EMP.EMP_FNL_MOD IS '최종수정일';

ALTER TABLE EMP
	ADD
		CONSTRAINT PK_EMP
		PRIMARY KEY (
			EMP_SQ
		);

/* 권한 */
CREATE TABLE PMS (
	PMS_SQ NUMBER NOT NULL, /* 권한번호 */
	PMS_NM VARCHAR2(100) NOT NULL /* 권한이름 */
);

COMMENT ON TABLE PMS IS '권한';

COMMENT ON COLUMN PMS.PMS_SQ IS '권한번호';

COMMENT ON COLUMN PMS.PMS_NM IS '권한이름';

ALTER TABLE PMS
	ADD
		CONSTRAINT PK_PMS
		PRIMARY KEY (
			PMS_SQ
		);

/* 부서 */
CREATE TABLE DPT (
	DPT_SQ NUMBER NOT NULL, /* 부서번호 */
	DPT_NM VARCHAR2(100) NOT NULL, /* 부서이름 */
	DPT_PSQ NUMBER /* 상위부서번호 */
);

COMMENT ON TABLE DPT IS '부서';

COMMENT ON COLUMN DPT.DPT_SQ IS '부서번호';

COMMENT ON COLUMN DPT.DPT_NM IS '부서이름';

COMMENT ON COLUMN DPT.DPT_PSQ IS '상위부서번호';

ALTER TABLE DPT
	ADD
		CONSTRAINT PK_DPT
		PRIMARY KEY (
			DPT_SQ
		);

/* 직위 */
CREATE TABLE RNK (
	RNK_SQ NUMBER NOT NULL, /* 직위번호 */
	RNK_NM VARCHAR2(100) NOT NULL /* 직위명 */
);

COMMENT ON TABLE RNK IS '직위';

COMMENT ON COLUMN RNK.RNK_SQ IS '직위번호';

COMMENT ON COLUMN RNK.RNK_NM IS '직위명';

ALTER TABLE RNK
	ADD
		CONSTRAINT PK_RNK
		PRIMARY KEY (
			RNK_SQ
		);

/* 일정 */
CREATE TABLE SCD (
	SCD_SQ NUMBER NOT NULL, /* 일정번호 */
	SCD_DIV_SQ NUMBER, /* 일정분류번호 */
	EMP_SQ VARCHAR2(100), /* 사원번호 */
	SCD_NM VARCHAR2(100) NOT NULL, /* 이름 */
	SCD_PST VARCHAR2(300), /* 위치 */
	SCD_SDAY VARCHAR2(50) NOT NULL, /* 시작날짜 */
	SCD_STIME VARCHAR2(50), /* 시작시간 */
	SCD_EDAY VARCHAR2(50) NOT NULL, /* 종료날짜 */
	SCD_ETIME VARCHAR2(50), /* 종료시간 */
	SCD_DCT VARCHAR2(4000) /* 설명 */
);

COMMENT ON TABLE SCD IS '일정';

COMMENT ON COLUMN SCD.SCD_SQ IS '일정번호';

COMMENT ON COLUMN SCD.SCD_DIV_SQ IS '일정분류번호';

COMMENT ON COLUMN SCD.EMP_SQ IS '사원번호';

COMMENT ON COLUMN SCD.SCD_NM IS '이름';

COMMENT ON COLUMN SCD.SCD_PST IS '위치';

COMMENT ON COLUMN SCD.SCD_SDAY IS '시작날짜';

COMMENT ON COLUMN SCD.SCD_STIME IS '시작시간';

COMMENT ON COLUMN SCD.SCD_EDAY IS '종료날짜';

COMMENT ON COLUMN SCD.SCD_ETIME IS '종료시간';

COMMENT ON COLUMN SCD.SCD_DCT IS '설명';

ALTER TABLE SCD
	ADD
		CONSTRAINT PK_SCD
		PRIMARY KEY (
			SCD_SQ
		);

/* 게시판 */
CREATE TABLE BRD (
	BRD_SQ NUMBER NOT NULL, /* 게시글번호 */
	BRD_DIV_SQ NUMBER NOT NULL, /* 게시판구분번호 */
	BRD_TTL VARCHAR2(200) NOT NULL, /* 제목 */
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	BRD_CTT CLOB NOT NULL, /* 내용 */
	BRD_DT VARCHAR2(100) NOT NULL, /* 작성일자 */
	BRD_HITS NUMBER NOT NULL, /* 조회수 */
	BRD_FL_ONM VARCHAR2(500), /* 원본파일이름 */
	BRD_FL_MNM VARCHAR2(500), /* 수정파일이름 */
	BRD_FL_RT VARCHAR2(500) /* 파일경로 */
);

COMMENT ON TABLE BRD IS '게시판';

COMMENT ON COLUMN BRD.BRD_SQ IS '게시글번호';

COMMENT ON COLUMN BRD.BRD_DIV_SQ IS '게시판구분번호';

COMMENT ON COLUMN BRD.BRD_TTL IS '제목';

COMMENT ON COLUMN BRD.EMP_SQ IS '사원번호';

COMMENT ON COLUMN BRD.BRD_CTT IS '내용';

COMMENT ON COLUMN BRD.BRD_DT IS '작성일자';

COMMENT ON COLUMN BRD.BRD_HITS IS '조회수';

COMMENT ON COLUMN BRD.BRD_FL_ONM IS '원본파일이름';

COMMENT ON COLUMN BRD.BRD_FL_MNM IS '수정파일이름';

COMMENT ON COLUMN BRD.BRD_FL_RT IS '파일경로';

ALTER TABLE BRD
	ADD
		CONSTRAINT PK_BRD
		PRIMARY KEY (
			BRD_SQ
		);

/* 주소록 */
CREATE TABLE ADDR (
	ADDR_SQ NUMBER NOT NULL, /* 주소록번호 */
	ADDR_GRP_SQ NUMBER NOT NULL, /* 주소록그룹번호 */
	ADDR_NM VARCHAR2(100) NOT NULL, /* 이름 */
	ADDR_CPN VARCHAR2(100), /* 회사 */
	ADDR_DPT VARCHAR2(100), /* 부서 */
	ADDR_RNK VARCHAR2(100), /* 직위 */
	ADDR_TEL1 VARCHAR2(10), /* 휴대전화1 */
	ADDR_TEL2 VARCHAR2(10), /* 휴대전화2 */
	ADDR_TEL3 VARCHAR2(10), /* 휴대전화3 */
	ADDR_EML_ID VARCHAR2(100), /* 이메일아이디 */
	ADDR_EML_ADDR VARCHAR2(100), /* 이메일주소 */
	ADDR_CPN_TEL1 VARCHAR2(10), /* 회사전화1 */
	ADDR_CPN_TEL2 VARCHAR2(10), /* 회사전화2 */
	ADDR_CPN_TEL3 VARCHAR2(10), /* 회사전화3 */
	ADDR_CPN_ADDR VARCHAR2(100), /* 회사주소 */
	ADDR_MM VARCHAR2(500) /* 메모 */
);

COMMENT ON TABLE ADDR IS '주소록';

COMMENT ON COLUMN ADDR.ADDR_SQ IS '주소록번호';

COMMENT ON COLUMN ADDR.ADDR_GRP_SQ IS '주소록그룹번호';

COMMENT ON COLUMN ADDR.ADDR_NM IS '이름';

COMMENT ON COLUMN ADDR.ADDR_CPN IS '회사';

COMMENT ON COLUMN ADDR.ADDR_DPT IS '부서';

COMMENT ON COLUMN ADDR.ADDR_RNK IS '직위';

COMMENT ON COLUMN ADDR.ADDR_TEL1 IS '휴대전화1';

COMMENT ON COLUMN ADDR.ADDR_TEL2 IS '휴대전화2';

COMMENT ON COLUMN ADDR.ADDR_TEL3 IS '휴대전화3';

COMMENT ON COLUMN ADDR.ADDR_EML_ID IS '이메일아이디';

COMMENT ON COLUMN ADDR.ADDR_EML_ADDR IS '이메일주소';

COMMENT ON COLUMN ADDR.ADDR_CPN_TEL1 IS '회사전화1';

COMMENT ON COLUMN ADDR.ADDR_CPN_TEL2 IS '회사전화2';

COMMENT ON COLUMN ADDR.ADDR_CPN_TEL3 IS '회사전화3';

COMMENT ON COLUMN ADDR.ADDR_CPN_ADDR IS '회사주소';

COMMENT ON COLUMN ADDR.ADDR_MM IS '메모';

ALTER TABLE ADDR
	ADD
		CONSTRAINT PK_ADDR
		PRIMARY KEY (
			ADDR_SQ
		);

/* 메일함 */
CREATE TABLE ML (
	ML_SQ NUMBER NOT NULL, /* 메일번호 */
	ML_GRP_SQ NUMBER NOT NULL, /* 메일그룹번호 */
	ML_STT_SQ NUMBER NOT NULL, /* 메일상태번호 */
	ML_IPT_SQ NUMBER NOT NULL, /* 메일중요분류번호 */
	ML_SND_ADD VARCHAR2(200) NOT NULL, /* 발신메일주소 */
	ML_RCV_ADD VARCHAR2(200) NOT NULL, /* 수신메일주소 */
	ML_TTL VARCHAR2(200) NOT NULL, /* 제목 */
	ML_CTT CLOB, /* 내용 */
	ML_FL_NM VARCHAR2(500), /* 파일명 */
	ML_FL_RT VARCHAR2(500) /* 파일경로 */
);

COMMENT ON TABLE ML IS '메일함';

COMMENT ON COLUMN ML.ML_SQ IS '메일번호';

COMMENT ON COLUMN ML.ML_GRP_SQ IS '메일그룹번호';

COMMENT ON COLUMN ML.ML_STT_SQ IS '메일상태번호';

COMMENT ON COLUMN ML.ML_IPT_SQ IS '메일중요분류번호';

COMMENT ON COLUMN ML.ML_SND_ADD IS '발신메일주소';

COMMENT ON COLUMN ML.ML_RCV_ADD IS '수신메일주소';

COMMENT ON COLUMN ML.ML_TTL IS '제목';

COMMENT ON COLUMN ML.ML_CTT IS '내용';

COMMENT ON COLUMN ML.ML_FL_NM IS '파일명';

COMMENT ON COLUMN ML.ML_FL_RT IS '파일경로';

ALTER TABLE ML
	ADD
		CONSTRAINT PK_ML
		PRIMARY KEY (
			ML_SQ
		);

/* 출퇴근 */
CREATE TABLE CMT (
	CMT_SQ NUMBER NOT NULL, /* 출퇴근번호 */
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	CMT_IP VARCHAR2(100) NOT NULL, /* IP */
	CMT_DATE DATE NOT NULL, /* 날짜 */
	CMT_STR_TM DATE, /* 출근시간 */
	CMT_END_TM DATE, /* 퇴근시간 */
	CMT_WOUT_TM DATE, /* 외근 */
	CMT_GOUT_TM DATE, /* 외출 */
	CMT_CB_TM DATE, /* 복귀 */
	CMT_MSG VARCHAR2(500) /* 메시지 */
);

COMMENT ON TABLE CMT IS '출퇴근';

COMMENT ON COLUMN CMT.CMT_SQ IS '출퇴근번호';

COMMENT ON COLUMN CMT.EMP_SQ IS '사원번호';

COMMENT ON COLUMN CMT.CMT_IP IS 'IP';

COMMENT ON COLUMN CMT.CMT_DATE IS '날짜';

COMMENT ON COLUMN CMT.CMT_STR_TM IS '출근시간';

COMMENT ON COLUMN CMT.CMT_END_TM IS '퇴근시간';

COMMENT ON COLUMN CMT.CMT_WOUT_TM IS '외근';

COMMENT ON COLUMN CMT.CMT_GOUT_TM IS '외출';

COMMENT ON COLUMN CMT.CMT_CB_TM IS '복귀';

COMMENT ON COLUMN CMT.CMT_MSG IS '메시지';

ALTER TABLE CMT
	ADD
		CONSTRAINT PK_CMT
		PRIMARY KEY (
			CMT_SQ
		);

/* 결재승인 */
CREATE TABLE APV_OK (
	APV_OK_SQ NUMBER NOT NULL, /* 결재승인번호 */
	APV_OK_NM VARCHAR2(100) NOT NULL /* 결재승인명 */
);

COMMENT ON TABLE APV_OK IS '결재승인';

COMMENT ON COLUMN APV_OK.APV_OK_SQ IS '결재승인번호';

COMMENT ON COLUMN APV_OK.APV_OK_NM IS '결재승인명';

ALTER TABLE APV_OK
	ADD
		CONSTRAINT PK_APV_OK
		PRIMARY KEY (
			APV_OK_SQ
		);

/* 기본정보사진 */
CREATE TABLE EMP_PIC (
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	EMP_PIC_DT VARCHAR2(50), /* 최종등록일 */
	EMP_PIC_RT VARCHAR2(500), /* 경로 */
	EMP_PIC_ONM VARCHAR2(500), /* 원래이름 */
	EMP_PIC_MNM VARCHAR2(500) /* 수정된이름 */
);

COMMENT ON TABLE EMP_PIC IS '기본정보사진';

COMMENT ON COLUMN EMP_PIC.EMP_SQ IS '사원번호';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_DT IS '최종등록일';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_RT IS '경로';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_ONM IS '원래이름';

COMMENT ON COLUMN EMP_PIC.EMP_PIC_MNM IS '수정된이름';

ALTER TABLE EMP_PIC
	ADD
		CONSTRAINT PK_EMP_PIC
		PRIMARY KEY (
			EMP_SQ
		);

/* 직책 */
CREATE TABLE PST (
	PST_SQ NUMBER NOT NULL, /* 직책번호 */
	PST_NM VARCHAR2(100) NOT NULL /* 직책명 */
);

COMMENT ON TABLE PST IS '직책';

COMMENT ON COLUMN PST.PST_SQ IS '직책번호';

COMMENT ON COLUMN PST.PST_NM IS '직책명';

ALTER TABLE PST
	ADD
		CONSTRAINT PK_PST
		PRIMARY KEY (
			PST_SQ
		);

/* 주소록그룹 */
CREATE TABLE ADDR_GRP (
	ADDR_GRP_SQ NUMBER NOT NULL, /* 주소록그룹번호 */
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	ADDR_GRP_NM VARCHAR2(100) NOT NULL /* 주소록그룹명 */
);

COMMENT ON TABLE ADDR_GRP IS '주소록그룹';

COMMENT ON COLUMN ADDR_GRP.ADDR_GRP_SQ IS '주소록그룹번호';

COMMENT ON COLUMN ADDR_GRP.EMP_SQ IS '사원번호';

COMMENT ON COLUMN ADDR_GRP.ADDR_GRP_NM IS '주소록그룹명';

ALTER TABLE ADDR_GRP
	ADD
		CONSTRAINT PK_ADDR_GRP
		PRIMARY KEY (
			ADDR_GRP_SQ
		);

/* 메일상태 */
CREATE TABLE ML_STT (
	ML_STT_SQ NUMBER NOT NULL, /* 메일상태번호 */
	ML_STT_NM VARCHAR2(100) NOT NULL /* 메일상태명 */
);

COMMENT ON TABLE ML_STT IS '메일상태';

COMMENT ON COLUMN ML_STT.ML_STT_SQ IS '메일상태번호';

COMMENT ON COLUMN ML_STT.ML_STT_NM IS '메일상태명';

ALTER TABLE ML_STT
	ADD
		CONSTRAINT PK_ML_STT
		PRIMARY KEY (
			ML_STT_SQ
		);

/* 메일그룹 */
CREATE TABLE ML_GRP (
	ML_GRP_SQ NUMBER NOT NULL, /* 메일그룹번호 */
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	ML_GRP_NM VARCHAR2(100) NOT NULL /* 메일그룹명 */
);

COMMENT ON TABLE ML_GRP IS '메일그룹';

COMMENT ON COLUMN ML_GRP.ML_GRP_SQ IS '메일그룹번호';

COMMENT ON COLUMN ML_GRP.EMP_SQ IS '사원번호';

COMMENT ON COLUMN ML_GRP.ML_GRP_NM IS '메일그룹명';

ALTER TABLE ML_GRP
	ADD
		CONSTRAINT PK_ML_GRP
		PRIMARY KEY (
			ML_GRP_SQ
		);

/* 메일중요도 */
CREATE TABLE ML_IPT (
	ML_IPT_SQ NUMBER NOT NULL, /* 메일중요분류번호 */
	ML_IPT_NM VARCHAR2(100) NOT NULL /* 메일중요도 */
);

COMMENT ON TABLE ML_IPT IS '메일중요도';

COMMENT ON COLUMN ML_IPT.ML_IPT_SQ IS '메일중요분류번호';

COMMENT ON COLUMN ML_IPT.ML_IPT_NM IS '메일중요도';

ALTER TABLE ML_IPT
	ADD
		CONSTRAINT PK_ML_IPT
		PRIMARY KEY (
			ML_IPT_SQ
		);

/* 게시판구분 */
CREATE TABLE BRD_DIV (
	BRD_DIV_SQ NUMBER NOT NULL, /* 게시판구분번호 */
	BRD_DIV_NM VARCHAR2(100) NOT NULL, /* 게시판구분명 */
	CCODE NUMBER /* 카테고리번호 */
);

COMMENT ON TABLE BRD_DIV IS '게시판구분';

COMMENT ON COLUMN BRD_DIV.BRD_DIV_SQ IS '게시판구분번호';

COMMENT ON COLUMN BRD_DIV.BRD_DIV_NM IS '게시판구분명';

COMMENT ON COLUMN BRD_DIV.CCODE IS '카테고리번호';

ALTER TABLE BRD_DIV
	ADD
		CONSTRAINT PK_BRD_DIV
		PRIMARY KEY (
			BRD_DIV_SQ
		);

/* 댓글 */
CREATE TABLE RPL (
	RPL_SQ NUMBER NOT NULL, /* 댓글번호 */
	BRD_SQ NUMBER NOT NULL, /* 게시글번호 */
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	RPL_CTT VARCHAR2(4000) NOT NULL, /* 내용 */
	RPL_RDT VARCHAR2(100) NOT NULL, /* 등록일 */
	RPL_LDT VARCHAR2(100) NOT NULL /* 최종수정일 */
);

COMMENT ON TABLE RPL IS '댓글';

COMMENT ON COLUMN RPL.RPL_SQ IS '댓글번호';

COMMENT ON COLUMN RPL.BRD_SQ IS '게시글번호';

COMMENT ON COLUMN RPL.EMP_SQ IS '사원번호';

COMMENT ON COLUMN RPL.RPL_CTT IS '내용';

COMMENT ON COLUMN RPL.RPL_RDT IS '등록일';

COMMENT ON COLUMN RPL.RPL_LDT IS '최종수정일';

ALTER TABLE RPL
	ADD
		CONSTRAINT PK_RPL
		PRIMARY KEY (
			RPL_SQ
		);

/* 결재양식분류 */
CREATE TABLE APV_FORM_DIV (
	APV_FORM_DIV_SQ NUMBER NOT NULL, /* 결재양식분류번호 */
	APV_FORM_DIV_NM VARCHAR2(100) NOT NULL /* 결재양식분류명 */
);

COMMENT ON TABLE APV_FORM_DIV IS '결재양식분류';

COMMENT ON COLUMN APV_FORM_DIV.APV_FORM_DIV_SQ IS '결재양식분류번호';

COMMENT ON COLUMN APV_FORM_DIV.APV_FORM_DIV_NM IS '결재양식분류명';

ALTER TABLE APV_FORM_DIV
	ADD
		CONSTRAINT PK_APV_FORM_DIV
		PRIMARY KEY (
			APV_FORM_DIV_SQ
		);

/* 결재양식 */
CREATE TABLE APV_FORM (
	APV_FORM_SQ NUMBER NOT NULL, /* 결재양식번호 */
	APV_FORM_DIV_SQ NUMBER NOT NULL, /* 결재양식분류번호 */
	APV_FORM_NM VARCHAR2(100) NOT NULL, /* 결재양식이름 */
	APV_FORM_CTT CLOB NOT NULL /* 결재양식내용 */
);

COMMENT ON TABLE APV_FORM IS '결재양식';

COMMENT ON COLUMN APV_FORM.APV_FORM_SQ IS '결재양식번호';

COMMENT ON COLUMN APV_FORM.APV_FORM_DIV_SQ IS '결재양식분류번호';

COMMENT ON COLUMN APV_FORM.APV_FORM_NM IS '결재양식이름';

COMMENT ON COLUMN APV_FORM.APV_FORM_CTT IS '결재양식내용';

ALTER TABLE APV_FORM
	ADD
		CONSTRAINT PK_APV_FORM
		PRIMARY KEY (
			APV_FORM_SQ
		);

/* 전자결재 */
CREATE TABLE APV (
	APV_SQ NUMBER NOT NULL, /* 문서번호 */
	APV_FORM_SQ NUMBER NOT NULL, /* 결재양식번호 */
	APV_OK_SQ NUMBER NOT NULL, /* 결재승인번호 */
	EMP_SQ VARCHAR2(100) NOT NULL, /* 사원번호 */
	APV_SAVE NUMBER NOT NULL, /* 문서보존기간 */
	APV_CTT CLOB NOT NULL, /* 문서내용 */
	APV_FL_RT VARCHAR2(200), /* 파일경로 */
	APV_FL_NM VARCHAR2(200), /* 파일이름 */
	EMP_1ST_SQ VARCHAR2(100), /* 1차승인자 */
	EMP_2ND_SQ VARCHAR2(100), /* 2차승인자 */
	EMP_FNL_SQ VARCHAR2(100) NOT NULL, /* 최종승인자 */
	APV_NO VARCHAR2(1000) /* 반려사유 */
);

COMMENT ON TABLE APV IS '전자결재';

COMMENT ON COLUMN APV.APV_SQ IS '문서번호';

COMMENT ON COLUMN APV.APV_FORM_SQ IS '결재양식번호';

COMMENT ON COLUMN APV.APV_OK_SQ IS '결재승인번호';

COMMENT ON COLUMN APV.EMP_SQ IS '사원번호';

COMMENT ON COLUMN APV.APV_SAVE IS '문서보존기간';

COMMENT ON COLUMN APV.APV_CTT IS '문서내용';

COMMENT ON COLUMN APV.APV_FL_RT IS '파일경로';

COMMENT ON COLUMN APV.APV_FL_NM IS '파일이름';

COMMENT ON COLUMN APV.EMP_1ST_SQ IS '1차승인자';

COMMENT ON COLUMN APV.EMP_2ND_SQ IS '2차승인자';

COMMENT ON COLUMN APV.EMP_FNL_SQ IS '최종승인자';

COMMENT ON COLUMN APV.APV_NO IS '반려사유';

ALTER TABLE APV
	ADD
		CONSTRAINT PK_APV
		PRIMARY KEY (
			APV_SQ
		);

/* 일정분류 */
CREATE TABLE SCD_DIV (
	SCD_DIV_SQ NUMBER NOT NULL, /* 일정분류번호 */
	SCD_DIV_NM VARCHAR2(50) NOT NULL /* 일정분류명 */
);

COMMENT ON TABLE SCD_DIV IS '일정분류';

COMMENT ON COLUMN SCD_DIV.SCD_DIV_SQ IS '일정분류번호';

COMMENT ON COLUMN SCD_DIV.SCD_DIV_NM IS '일정분류명';

ALTER TABLE SCD_DIV
	ADD
		CONSTRAINT PK_SCD_DIV
		PRIMARY KEY (
			SCD_DIV_SQ
		);

/* 카테고리 */
CREATE TABLE CATEGORY (
	CCODE NUMBER NOT NULL, /* 카테고리번호 */
	CNAME VARCHAR2(100) NOT NULL /* 카테고리이름 */
);

COMMENT ON TABLE CATEGORY IS '카테고리';

COMMENT ON COLUMN CATEGORY.CCODE IS '카테고리번호';

COMMENT ON COLUMN CATEGORY.CNAME IS '카테고리이름';

ALTER TABLE CATEGORY
	ADD
		CONSTRAINT PK_CATEGORY
		PRIMARY KEY (
			CCODE
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_DPT_TO_EMP
		FOREIGN KEY (
			DPT_SQ
		)
		REFERENCES DPT (
			DPT_SQ
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_PST_TO_EMP
		FOREIGN KEY (
			PST_SQ
		)
		REFERENCES PST (
			PST_SQ
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_PMS_TO_EMP
		FOREIGN KEY (
			PMS_SQ
		)
		REFERENCES PMS (
			PMS_SQ
		);

ALTER TABLE EMP
	ADD
		CONSTRAINT FK_RNK_TO_EMP
		FOREIGN KEY (
			RNK_SQ
		)
		REFERENCES RNK (
			RNK_SQ
		);

ALTER TABLE SCD
	ADD
		CONSTRAINT FK_EMP_TO_SCD
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE SCD
	ADD
		CONSTRAINT FK_SCD_DIV_TO_SCD
		FOREIGN KEY (
			SCD_DIV_SQ
		)
		REFERENCES SCD_DIV (
			SCD_DIV_SQ
		);

ALTER TABLE BRD
	ADD
		CONSTRAINT FK_BRD_DIV_TO_BRD
		FOREIGN KEY (
			BRD_DIV_SQ
		)
		REFERENCES BRD_DIV (
			BRD_DIV_SQ
		);

ALTER TABLE BRD
	ADD
		CONSTRAINT FK_EMP_TO_BRD
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE ADDR
	ADD
		CONSTRAINT FK_ADDR_GRP_TO_ADDR
		FOREIGN KEY (
			ADDR_GRP_SQ
		)
		REFERENCES ADDR_GRP (
			ADDR_GRP_SQ
		);

ALTER TABLE ML
	ADD
		CONSTRAINT FK_ML_IPT_TO_ML
		FOREIGN KEY (
			ML_IPT_SQ
		)
		REFERENCES ML_IPT (
			ML_IPT_SQ
		);

ALTER TABLE ML
	ADD
		CONSTRAINT FK_ML_STT_TO_ML
		FOREIGN KEY (
			ML_STT_SQ
		)
		REFERENCES ML_STT (
			ML_STT_SQ
		);

ALTER TABLE ML
	ADD
		CONSTRAINT FK_ML_GRP_TO_ML
		FOREIGN KEY (
			ML_GRP_SQ
		)
		REFERENCES ML_GRP (
			ML_GRP_SQ
		);

ALTER TABLE CMT
	ADD
		CONSTRAINT FK_EMP_TO_CMT
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE EMP_PIC
	ADD
		CONSTRAINT FK_EMP_TO_EMP_PIC
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE ADDR_GRP
	ADD
		CONSTRAINT FK_EMP_TO_ADDR_GRP
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE ML_GRP
	ADD
		CONSTRAINT FK_EMP_TO_ML_GRP
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE BRD_DIV
	ADD
		CONSTRAINT FK_CATEGORY_TO_BRD_DIV
		FOREIGN KEY (
			CCODE
		)
		REFERENCES CATEGORY (
			CCODE
		);

ALTER TABLE RPL
	ADD
		CONSTRAINT FK_BRD_TO_RPL
		FOREIGN KEY (
			BRD_SQ
		)
		REFERENCES BRD (
			BRD_SQ
		);

ALTER TABLE APV_FORM
	ADD
		CONSTRAINT FK_APV_FORM_DIV_TO_APV_FORM
		FOREIGN KEY (
			APV_FORM_DIV_SQ
		)
		REFERENCES APV_FORM_DIV (
			APV_FORM_DIV_SQ
		);

ALTER TABLE APV
	ADD
		CONSTRAINT FK_APV_FORM_TO_APV
		FOREIGN KEY (
			APV_FORM_SQ
		)
		REFERENCES APV_FORM (
			APV_FORM_SQ
		);

ALTER TABLE APV
	ADD
		CONSTRAINT FK_EMP_TO_APV
		FOREIGN KEY (
			EMP_SQ
		)
		REFERENCES EMP (
			EMP_SQ
		);

ALTER TABLE APV
	ADD
		CONSTRAINT FK_APV_OK_TO_APV
		FOREIGN KEY (
			APV_OK_SQ
		)
		REFERENCES APV_OK (
			APV_OK_SQ
		);


-- 부서번호 SEQ
DROP SEQUENCE "DPT_SQ";
CREATE SEQUENCE "DPT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 6 NOCACHE NOORDER NOCYCLE;

-- 직책번호 SEQ
DROP SEQUENCE "PST_SQ";
CREATE SEQUENCE "PST_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE NOORDER NOCYCLE;

-- 권한번호 SEQ
DROP SEQUENCE "PMS_SQ";
CREATE SEQUENCE "PMS_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 3 NOCACHE NOORDER NOCYCLE;

-- 직위번호 SEQ
DROP SEQUENCE "RNK_SQ";
CREATE SEQUENCE "RNK_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 7 NOCACHE NOORDER NOCYCLE;

-- 일정번호 SEQ
DROP SEQUENCE "SCD_SQ";
CREATE SEQUENCE "SCD_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 사원번호 SEQ
DROP SEQUENCE "EMP_SQ";
CREATE SEQUENCE "EMP_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일그룹번호 SEQ
DROP SEQUENCE "ML_GRP_SQ";
CREATE SEQUENCE "ML_GRP_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일번호 SEQ
DROP SEQUENCE "ML_SQ";
CREATE SEQUENCE "ML_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 출퇴근번호 SEQ
DROP SEQUENCE "CMT_SQ";
CREATE SEQUENCE "CMT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일상태번호 SEQ
DROP SEQUENCE "ML_STT_SQ";
CREATE SEQUENCE "ML_STT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 메일중요분류번호 SEQ
DROP SEQUENCE "ML_IPT_SQ";
CREATE SEQUENCE "ML_IPT_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 결재승인번호 SEQ
DROP SEQUENCE "APV_OK_SQ";
CREATE SEQUENCE "APV_OK_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 문서번호 SEQ
DROP SEQUENCE "APV_SQ";
CREATE SEQUENCE "APV_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 결재양식분류번호 SEQ
DROP SEQUENCE "APV_FORM_DIV_SQ";
CREATE SEQUENCE "APV_FORM_DIV_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 결재양식번호 SEQ
DROP SEQUENCE "APV_FORM_SQ";
CREATE SEQUENCE "APV_FORM_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 게시판구분번호 SEQ
DROP SEQUENCE "BRD_DIV_SQ";
CREATE SEQUENCE "BRD_DIV_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 게시글번호 SEQ
DROP SEQUENCE "BRD_SQ";
CREATE SEQUENCE "BRD_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 리플번호 SEQ
DROP SEQUENCE "RPL_SQ";
CREATE SEQUENCE "RPL_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 주소록그룹번호 SEQ
DROP SEQUENCE "ADDR_GRP_SQ";
CREATE SEQUENCE "ADDR_GRP_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;

-- 주소록번호 SEQ
DROP SEQUENCE "ADDR_SQ";
CREATE SEQUENCE "ADDR_SQ" MINVALUE 1 MAXVALUE 99999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE NOORDER NOCYCLE;


-- 권한
INSERT INTO PMS (PMS_SQ,PMS_NM) VALUES (0,'퇴사');
INSERT INTO PMS (PMS_SQ,PMS_NM) VALUES (1,'일반 사용자');
INSERT INTO PMS (PMS_SQ,PMS_NM) VALUES (2,'관리자');

-- 부서
INSERT INTO DPT (DPT_SQ,DPT_NM) VALUES (0,'퇴사');
INSERT INTO DPT (DPT_SQ,DPT_NM) VALUES (1,'관리부');
INSERT INTO DPT (DPT_SQ,DPT_NM) VALUES (2,'인사과');
INSERT INTO DPT (DPT_SQ,DPT_NM) VALUES (3,'무역부');
INSERT INTO DPT (DPT_SQ,DPT_NM) VALUES (4,'영업부');
INSERT INTO DPT (DPT_SQ,DPT_NM) VALUES (5,'판매부');

-- 직위
INSERT INTO RNK (RNK_SQ,RNK_NM) VALUES (0,'퇴사');
INSERT INTO RNK (RNK_SQ,RNK_NM) VALUES (1,'사원');
INSERT INTO RNK (RNK_SQ,RNK_NM) VALUES (2,'대리');
INSERT INTO RNK (RNK_SQ,RNK_NM) VALUES (3,'과장');
INSERT INTO RNK (RNK_SQ,RNK_NM) VALUES (4,'차장');
INSERT INTO RNK (RNK_SQ,RNK_NM) VALUES (5,'부장');
INSERT INTO RNK (RNK_SQ,RNK_NM) VALUES (6,'사장');

-- 직책
INSERT INTO PST (PST_SQ,PST_NM) VALUES (0,'퇴사');
INSERT INTO PST (PST_SQ,PST_NM) VALUES (1,'팀원');
INSERT INTO PST (PST_SQ,PST_NM) VALUES (2,'파트장');
INSERT INTO PST (PST_SQ,PST_NM) VALUES (3,'팀장');
INSERT INTO PST (PST_SQ,PST_NM) VALUES (4,'실장');
INSERT INTO PST (PST_SQ,PST_NM) VALUES (5,'본부장');
INSERT INTO PST (PST_SQ,PST_NM) VALUES (6,'사업부장');

-- 일정분류
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (1,'휴가');
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (2,'출장');
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (3,'회의');
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (4,'사내행사');
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (5,'연차');
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (6,'반차');
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (7,'병가');
INSERT INTO SCD_DIV (SCD_DIV_SQ,SCD_DIV_NM) VALUES (8,'교육');

-- 관리자
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_BS_TEL1,EMP_BS_TEL2,EMP_BS_TEL3,EMP_CRT,EMP_REG,EMP_EXIT,EMP_FNL_MOD)
VALUES ('0',2,1,5,5,'관리자','admin','admin','M','1993-02-22','admin','@admin.com',
        '010','0000','0000','00000','대한민국','서울','02','0000','0000','',sysdate,'',sysdate);

-- 일반사원
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_BS_TEL1,EMP_BS_TEL2,EMP_BS_TEL3,EMP_CRT,EMP_REG,EMP_EXIT,EMP_FNL_MOD)
VALUES ('1',1,1,1,1,'일반사원','member','member','M','1993-02-22','member','@member.com',
        '010','0000','0000','00000','대한민국','서울','02','0000','0000','',sysdate,'',sysdate);

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('001',1,1,1,1,'김고은','mskim','mskim','F','1991-03-03','mskim','@mskim.com',
                '010','0001','1234','00001','서울특별시','가리봉동',SYSDATE,SYSDATE); --1명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('002',1,2,2,1,'박윤민','mrpark','mrpark','M','1992-03-03','mrpark','@mrpark.com',
                '010','0002','1235','00002','경기도','의정부시',SYSDATE,SYSDATE); --2명

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('003',1,2,1,3,'김지훈','mrkim','mrkim','M','1993-03-03','mrkim','@mrkim.com',
                '010','0003','1235','00003','인천','부평시',SYSDATE,SYSDATE); --3명
                

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('004',1,3,1,3,'강혜인','mskang','mskang','F','1995-03-03','mskang','@mskang.com',
                '010','0003','1237','00004','경기도','의왕시',SYSDATE,SYSDATE); --4명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('005',1,2,2,4,'강수민','kkang','kkang','F','1995-03-03','kkang','@kkang.com',
                '010','0012','1346','00005','경기도','고양시',SYSDATE,SYSDATE); --5명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('006',1,3,2,4,'가나다','gaga','gaga','M','1990-03-03','gaga','@gaga.com',
                '010','0812','1646','00012','서울시','구로구',SYSDATE,SYSDATE); --6명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('007',1,1,1,4,'나다라','nana','nana','M','1993-03-03','nana','@nana.com',
                '010','7912','1846','02212','서울시','구로구',SYSDATE,SYSDATE); --7명
  

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('008',1,3,5,5,'다라마','dada','dada','F','1993-03-03','dada','@dada.com',
                '010','8521','7894','02002','서울시','관악구',SYSDATE,SYSDATE); --8명

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('009',1,2,2,3,'라마바','ba','ba','M','1994-03-03','ba','@ba.com',
                '010','2912','4646','02202','서울시','영등포구',SYSDATE,SYSDATE); --9명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('010',1,2,1,3,'홍길동','hong','hong','M','1980-03-03','hong','@hong.com',
                '010','4136','3659','95314','경기도','광명시',SYSDATE,SYSDATE); --10명
                
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('011',1,3,2,6,'유관순','yoo','yoo','F','1970-03-03','yoo','@yoo.com',
                '010','8524','0068','95314','서울특별시','중구',SYSDATE,SYSDATE); --11명

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('012',1,4,4,4,'김소현','kimms','kimms','F','1988-03-03','kimms','@kimms.com',
                '010','8884','8888','91004','서울특별시','중구',SYSDATE,SYSDATE); --12명

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('013',1,5,6,6,'신영준','joon','joon','M','1990-03-03','joon','@joon.com',
                '010','8642','2648','10021','서울특별시','마포구',SYSDATE,SYSDATE); --13명

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('014',1,2,2,6,'고정렬','koh','koh','M','1994-03-03','koh','@koh.com',
                '010','6881','8114','16254','경기도','김포시',SYSDATE,SYSDATE); --14명

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('015',1,3,5,4,'김다빈','dabin1','dabin1','M','1992-03-03','dabin1','@dabin.com',
                '010','3564','6444','20654','경기도','용인시',SYSDATE,SYSDATE); --15명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('016',1,1,1,1,'조성진','jin','jin','M','1991-03-03','jin','@jin.com',
                '010','0252','6584','20654','경기도','용인시',SYSDATE,SYSDATE); --16명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('017',1,2,3,2,'임종윤','yoons','yoons','M','1994-03-03','yoons','@yoons.com',
                '010','1369','8541','94658','강원도','강릉시',SYSDATE,SYSDATE); --17명

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('018',1,2,6,6,'하영선','young','young','F','1968-03-03','young','@young.com',
                '010','8564','9964','03652','서울특별시','강남구',SYSDATE,SYSDATE); --18명               

INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('019',1,1,6,6,'강상헌','kanghun','kanghun','M','1963-03-03','kanghun','@kanghun.com',
                '010','6666','9222','03652','서울특별시','서초구',SYSDATE,SYSDATE); --19명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('020',1,4,6,6,'김수진','soooo','soooo','F','1988-03-03','soooo','@soooo.com',
                '010','6886','8524','11111','서울특별시','영등포구',SYSDATE,SYSDATE); --20명
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('021',1,3,1,1,'한정희','grand','grand','F','1977-03-03','grand','@grand.com',
                '010','5391','1624','15611','서울특별시','노원구',SYSDATE,SYSDATE); --21명
                
                
INSERT INTO EMP (EMP_SQ,PMS_SQ,DPT_SQ,RNK_SQ,PST_SQ,EMP_NM,EMP_ID,EMP_PW,EMP_SEX,EMP_BDATE,
                 EMP_ML_ID,EMP_ML_ADDR,EMP_TEL1,EMP_TEL2,EMP_TEL3,EMP_ZIP,EMP_ADDR,EMP_ADDR_DT,
                 EMP_REG,EMP_FNL_MOD)
        VALUES ('022',1,3,4,5,'황수빈','hwang','hwang','F','1995-03-03','hwang','@hwang.com',
                '010','8844','9999','05060','서울특별시','관악구',SYSDATE,SYSDATE); --22명

COMMIT;
