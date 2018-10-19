-- 다음 CMT_SQ 시퀀스 번호 가져오기
SELECT CMT_SQ.nextval
FROM dual

-- 오늘 Commute 했는지 확인하기
SELECT COUNT(CMT_SQ)
FROM CMT
WHERE
EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 오늘 CMT_SQ 가져오기
SELECT CMT_SQ
FROM CMT
WHERE
EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- Commute 가져오기
SELECT CMT_SQ,EMP_SQ,CMT_IP,CMT_DATE
       ,CMT_STR_TM,CMT_END_TM,CMT_WOUT_TM,CMT_GOUT_TM,CMT_CB_TM
FROM CMT
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 출근하기
INSERT INTO CMT(CMT_SQ, EMP_SQ, CMT_IP, CMT_DATE, CMT_STR_TM)
VALUE (#{cmt_sq},#{emp_sq},#{cmt_ip},#{today},#{cmt_str_tm})

-- 퇴근하기
UPDATE CMT
SET CMT_END_TM = #{cmt_end_tm}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 외근하기
UPDATE CMT
SET CMT_WOUT_TM = #{cmt_wout_tm}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 외출하기
UPDATE CMT
SET CMT_GOUT_TM = #{cmt_gout_tm}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 복귀하기
UPDATE CMT
SET CMT_CB_TM = #{cmt_cb_tm}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 평균 출근 시간
SELECT LPAD(TRUNC(AVG(SUBSTR(CMT_STR_TM, 1, 2) * 3600 + SUBSTR(CMT_STR_TM, 4, 2) * 60 + SUBSTR(CMT_STR_TM, 7, 2))/3600),2,'0')
       || ':' ||
       LPAD(TRUNC(MOD(AVG(SUBSTR(CMT_STR_TM, 1, 2) * 3600 + SUBSTR(CMT_STR_TM, 4, 2) * 60 + SUBSTR(CMT_STR_TM, 7, 2)),3600)/60),2,'0')
       || ':' ||
       LPAD(TRUNC(MOD(AVG(SUBSTR(CMT_STR_TM, 1, 2) * 3600 + SUBSTR(CMT_STR_TM, 4, 2) * 60 + SUBSTR(CMT_STR_TM, 7, 2)),60)),2,'0') CMT_STR_TM
FROM CMT
WHERE EMP_SQ = #{emp_sq}

