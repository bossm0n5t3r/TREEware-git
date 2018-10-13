-- 다음 seq 가져오기
SELECT ML_STT_SQ.nextval
FROM dual

SELECT ML_GRP_SQ.nextval
FROM dual

SELECT ML_IPT_SQ.nextval
FROM dual

SELECT ML_SQ.nextval
FROM dual

-- 메일상태 (ML_STT)
-- 메일상태 가져오기
SELECT ML_STT_SQ, ML_STT_NM
FROM ML_STT

-- 메일중요도 (ML_IPT)
-- 메일중요도 가져오기
SELECT ML_IPT_SQ, ML_IPT_NM
FROM ML_IPT

-- 메일그룹 (ML_GRP)
-- 메일그룹 가져오기
SELECT ML_GRP_SQ, ML_GRP_NM
FROM ML_GRP
WHERE EML_SQ = #{emp_sq}

-- 메일그룹 추가하기
INSERT INTO ML_GRP(ML_GRP_SQ, EMP_SQ, ML_GRP_NM)
VALUES (#{ml_grp_sq},#{emp_sq},#{ml_grp_nm})

-- 메일그룹이름 수정하기
UPDATE ML_GRP
SET ML_GRP_NM = #{ml_grp_nm}
WHERE ML_GRP_SQ = #{ml_grp_sq}

-- 메일그룹 삭제하기 (CASCADE 보다 안전하게 처리하기)
DELETE FROM ML
WHERE ML_GRP_SQ = #{ml_grp_sq}

DELETE FROM ML_GRP
WHERE ML_GRP_SQ = #{ml_grp_sq}


-- 메일쓰기
INSERT INTO ML(ML_SQ, ML_GRP_SQ, ML_STT_SQ, ML_IPT_SQ
			   , ML_SND_ADD, ML_RCV_ADD, ML_TTL, ML_CTT, ML_FL_NM, ML_FL_RT)
VALUES (#{ml_sq},#{ml_grp_sq},#{ml_stt_sq},#{ml_ipt_sq}
		,#{ml_snd_add},#{ml_rcv_add},#{ml_ttl},#{ml_ctt},#{ml_fl_nm},#{ml_fl_rt})
-- 메일삭제
DELETE FROM ML
WHERE ML_SQ = #{ml_sq}

-- 메일을 어떤 그룹에서 다른 그룹으로 이동
UPDATE ML
SET ML_GRP_SQ = #{ml_grp_sq}
WHERE ML_SQ = #{ml_sq}