-- 11->>1
SELECT ord_no, ord_date, purch_amt FROM orders_salesman WHERE salesman_id=5001;
-- 12->>2
SELECT YEAR, SUBJECT, WINNER FROM nobel_win WHERE YEAR=1970;
-- 13->>3
SELECT YEAR, SUBJECT, WINNER FROM nobel_win WHERE YEAR=1971 AND SUBJECT='Literature';
-- 14->>4
SELECT YEAR, SUBJECT, WINNER FROM nobel_win WHERE WINNER='Dennis Gabor';
-- 15->>5
SELECT WINNER FROM nobel_win WHERE SUBJECT='Physics' AND YEAR >= 1950;
-- 16->>6
SELECT YEAR, SUBJECT, WINNER, COUNTRY FROM nobel_win WHERE YEAR BETWEEN 1965 AND 1975;
-- 17->>7
SELECT * FROM nobel_win WHERE YEAR>1972 AND WINNER IN ('Menachem Begin', 'Yitzhak Rabin');
-- 18->>8
SELECT * FROM nobel_win WHERE WINNER LIKE 'Louis%';
-- 19->>9
SELECT * FROM nobel_win WHERE SUBJECT='Physics' AND YEAR=1970 OR SUBJECT='Economics' AND YEAR=1971;
-- SAU PRIN UNION
-- 19->>10
SELECT * FROM nobel_win WHERE SUBJECT='Physics' AND YEAR=1970
UNION
SELECT * FROM nobel_win WHERE SUBJECT='Economics' AND YEAR=1971;