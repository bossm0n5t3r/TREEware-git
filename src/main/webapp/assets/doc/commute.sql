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
	   ,CMT_STR_TM,CMT_END_TM,CMT_WOUT_TM,CMT_GOUT_TM,CMT_CB_TM,CMT_MSG
FROM CMT
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 출근하기
INSERT INTO CMT(CMT_SQ, EMP_SQ, CMT_IP, CMT_DATE, CMT_STR_TM, CMT_MSG)
VALUE (#{cmt_sq},#{emp_sq},#{cmt_ip},#{today},#{cmt_str_tm},#{cmt_msg})

-- 퇴근하기
UPDATE CMT
SET CMT_END_TM = #{cmt_end_tm}, CMT_MSG = CMT_MSG + #{cmt_msg}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 외근하기
UPDATE CMT
SET CMT_WOUT_TM = #{cmt_wout_tm}, CMT_MSG = CMT_MSG + #{cmt_msg}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 외출하기
UPDATE CMT
SET CMT_GOUT_TM = #{cmt_gout_tm}, CMT_MSG = CMT_MSG + #{cmt_msg}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 복귀하기
UPDATE CMT
SET CMT_CB_TM = #{cmt_cb_tm}, CMT_MSG = CMT_MSG + #{cmt_msg}
WHERE
CMT_SQ=#{cmt_sq}

or

EMP_SQ = #{emp_sq} AND CMT_DATE = #{today}

-- 평균 출근시간
SELECT AVG(CMT_STR_TM)
FROM CMT
WHERE EMP_SQ = #{emp_sq}

-- 평균 퇴근시간
SELECT AVG(CMT_END_TM)
FROM CMT
WHERE EMP_SQ = #{emp_sq}