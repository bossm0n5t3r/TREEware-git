-- 다음 SEQ value 가져오기
SELECT ADDR_GRP_SQ.nextval
FROM dual

SELECT ADDR_SQ.nextval
FROM dual

-- 주소록 그룹 (ADDR_GRP)
-- 주소록 그룹 검색
SELECT ADDR_GRP_SQ, ADDR_GRP_NM
FROM ADDR_GRP
WHERE
EMP_SQ = #{emp_sq}

-- 주소록 그룹 추가
INSERT INTO ADDR_GRP(ADDR_GRP_SQ, EMP_SQ, ADDR_GRP_NM)
VALUES (#{addr_grp_sq},#{emp_sq},#{addr_grp_nm})

-- 주소록 그룹 수정
UPDATE ADDR_GRP
SET ADDR_GRP_NM = #{addr_grp_nm}
WHERE ADDR_GRP_SQ = #{addr_grp_sq}

-- 주소록 그룹 삭제 (CASCADE X)
DELETE FROM ADDR
WHERE ADDR_GRP_SQ = #{addr_grp_sq}

DELETE FROM ADDR_GRP
WHERE ADDR_GRP_SQ = #{addr_grp_sq}


-- 주소록 (ADDR)
-- 주소록 검색
SELECT ADDR_SQ, ADDR_GRP_SQ, ADDR_NM, ADDR_CPN, ADDR_DPT, ADDR_RNK, ADDR_TEL1, ADDR_TEL2, ADDR_TEL3
       ,ADDR_EML_ID, ADDR_EML_ADDR, ADDR_CPN_TEL1, ADDR_CPN_TEL2, ADDR_CPN_TEL3, ADDR_CPN_ADDR, ADDR_MM
FROM ADDR
WHERE
ADDR_GRP_SQ = #{addr_grp_sq}

-- 주소록 추가
INSERT INTO ADDR(ADDR_SQ, ADDR_GRP_SQ, ADDR_NM, ADDR_CPN, ADDR_DPT, ADDR_RNK, ADDR_TEL1, ADDR_TEL2, ADDR_TEL3
                ,ADDR_EML_ID, ADDR_EML_ADDR, ADDR_CPN_TEL1, ADDR_CPN_TEL2, ADDR_CPN_TEL3, ADDR_CPN_ADDR, ADDR_MM)
VALUES (#{addr_sq},#{addr_grp_sq},#{addr_nm},#{addr_cpn},#{addr_dpt},#{addr_rnk}
       ,#{addr_tel1},#{addr_tel2},#{addr_tel3},#{addr_eml_id},#{addr_eml_addr}
       ,#{addr_cpn_tel1},#{addr_cpn_tel2},#{addr_cpn_tel2},#{addr_cpn_addr},#{addr_mm})

-- 주소록 수정
UPDATE ADDR
SET ADDR_NM = #{addr_nm}
    ,ADDR_CPN = #{addr_cpn}
    ,ADDR_DPT = #{addr_dpt}
    ,ADDR_RNK = #{addr_rnk}
    ,ADDR_TEL1 = #{addr_tel1}
    ,ADDR_TEL2 = #{addr_tel2}
    ,ADDR_TEL3 = #{addr_tel3}
    ,ADDR_EML_ID = #{addr_eml_id}
    ,ADDR_EML_ADDR = #{addr_eml_addr}
    ,ADDR_CPN_TEL1 = #{addr_cpn_tel1}
    ,ADDR_CPN_TEL2 = #{addr_cpn_tel2}
    ,ADDR_CPN_TEL3 = #{addr_cpn_tel3}
    ,ADDR_CPN_ADDR = #{addr_cpn_addr}
    ,ADDR_MM = #{addr_mm}
WHERE ADDR_SQ = #{addr_sq}

-- 주소록 그룹 이동
UPDATE ADDR
SET ADDR_GRP_SQ = #{addr_grp_sq}
WHERE ADDR_SQ = #{addr_sq}

-- 주소록 삭제
DELETE FROM ADDR
WHERE ADDR_SQ = #{addr_sq}
