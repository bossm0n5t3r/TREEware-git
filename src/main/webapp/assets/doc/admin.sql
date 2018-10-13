-- !!! 집에서 확인작업 바람 !!!

-- 부서 (DPT)
-- 부서 검색
SELECT DPT_SQ, DPT_NM
FROM DPT
-- 부서 추가
INSERT INTO DPT(DPT_SQ, DPT_NM)
VALUES(#{DPT_SQ},#{DPT_NM})
-- 부서 수정
UPDATE DPT
SET DPT_NM = #{dpt_nm}
WHERE DPT_SQ = #{dpt_sq}
-- 부서 삭제
DELETE FROM DPT
WHERE DPT_SQ = #{dpt_sq}



-- 직위 (RNK)
-- 직위 검색
SELECT RNK_SQ, RNK_NM
FROM RNK
-- 직위 추가
INSERT INTO RNK(RNK_SQ, RNK_NM)
VALUES(#{RNK_SQ},#{RNK_NM})
-- 직위 수정
UPDATE RNK
SET RNK_NM = #{rnk_nm}
WHERE RNK_SQ = #{rnk_sq}
-- 직위 삭제
DELETE FROM RNK
WHERE RNK_SQ = #{rnk_sq}



-- 직책 (PST)
-- 직책 검색
SELECT PST_SQ, PST_NM
FROM PST
-- 직책 추가
INSERT INTO PST(PST_SQ, PST_NM)
VALUES(#{PST_SQ},#{PST_NM})
-- 직책 수정
UPDATE PST
SET PST_NM = #{pst_nm}
WHERE PST_SQ = #{pst_sq}
-- 직책 삭제
DELETE FROM PST
WHERE PST_SQ = #{pst_sq}
