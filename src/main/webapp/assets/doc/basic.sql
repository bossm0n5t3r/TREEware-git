-- 모든 테이블 삭제하기

SELECT 'DROP TABLE "' || TABLE_NAME || '" CASCADE CONSTRAINTS;' 
FROM user_tables;
