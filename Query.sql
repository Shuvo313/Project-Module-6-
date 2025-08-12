Question 1 -> A)
SELECT DISTINCT salary
FROM employee
ORDER BY salary ASC
LIMIT 2, 1;

B)
SELECT MIN(salary) AS second_lowest_salary
FROM employee
WHERE salary > (
SELECT MIN(salary)
FROM employee
);

C)
a) 
SELECT AVG(PENDING_BALANCE) AS avg_pending_balance
FROM account;
b) 
SELECT *
FROM account
WHERE STATUS = 'ACTIVE';
c) 
SELECT OPEN_BRANCH_ID, AVG(PENDING_BALANCE) AS avg_pending_balance
FROM account
GROUP BY OPEN_BRANCH_ID;
d)
SELECT OPEN_BRANCH_ID, AVG(PENDING_BALANCE) AS avg_pending_balance
FROM account
WHERE STATUS = 'ACTIVE'
GROUP BY OPEN_BRANCH_ID
HAVING AVG(PENDING_BALANCE) < 4300;

D) 
Pagination: Pagination is the process of displaying the data on multiple pages rather than showing them on a single page. You usually do pagination when there is a database with numerous records. Dividing those records increases the readability of the data. It can retrieve this data as per the user’s requests.

SELECT ACCOUNT_ID, AVAIL_BALANCE, STATUS, OPEN_BRANCH_ID
FROM account
WHERE OPEN_BRANCH_ID = 2
ORDER BY ACCOUNT_ID ASC
LIMIT 5 OFFSET 0;

E)
SELECT OPEN_BRANCH_ID, COUNT(DISTINCT OPEN_BRANCH_ID) + 1 AS total_branches_including_head
FROM ACCOUNT
WHERE OPEN_BRANCH_ID IS NOT NULL
GROUP BY OPEN_BRANCH_ID;
