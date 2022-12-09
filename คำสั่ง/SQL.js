

/**
 * คำสั่ง MySQL
 */

// ตัวซ้ำ โชวตัวเดียว >> DISTINCT <<
// ref. https://saixiii.com/database-sql-distinct/
`
SELECT DISTINCT name FROM district
INNER JOIN user_commu
ON district.id = user_commu.district_id
;`