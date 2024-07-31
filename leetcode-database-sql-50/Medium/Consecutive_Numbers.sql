-- # Write your MySQL query statement below
WITH temp AS(
    SELECT id, 
    LEAD(id,1) OVER(ORDER BY id) AS id2,
    LEAD(id,2) OVER(ORDER BY id) AS id3,
    num,
    LEAD(num,1) OVER(ORDER BY id) AS n2,
    LEAD(num,2) OVER(ORDER BY id) AS n3
    FROM Logs
)

SELECT DISTINCT num AS ConsecutiveNums 
FROM temp
WHERE num = n2 AND n2 = n3 AND id+1 = id2 AND id2+1 = id3



/**

Table: Logs

+-------------+---------+
| Column Name | Type    |
+-------------+---------+
| id          | int     |
| num         | varchar |
+-------------+---------+
In SQL, id is the primary key for this table.
id is an autoincrement column.
 

Find all numbers that appear at least three times consecutively.

Return the result table in any order.

The result format is in the following example.

 

Example 1:

Input: 
Logs table:
+----+-----+
| id | num |
+----+-----+
| 1  | 1   |
| 2  | 1   |
| 3  | 1   |
| 4  | 2   |
| 5  | 1   |
| 6  | 2   |
| 7  | 2   |
+----+-----+
Output: 
+-----------------+
| ConsecutiveNums |
+-----------------+
| 1               |
+-----------------+
Explanation: 1 is the only number that appears consecutively for at least three times.

**/

