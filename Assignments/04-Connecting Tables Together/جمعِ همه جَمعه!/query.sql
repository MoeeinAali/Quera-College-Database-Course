SELECT job_id, squad_id, salary
FROM (SELECT job_id, squad_id, SUM(salary) AS 'salary', 1 ORDER_COLUMN
      FROM employees
      GROUP BY job_id, squad_id
      UNION
      SELECT job_id, NULL, SUM(salary) AS 'salary', 2 AS ORDER_COLUMN
      FROM employees
      GROUP BY job_id
      UNION
      SELECT NULL, squad_id, SUM(salary) AS 'salary', 3 AS ORDER_COLUMN
      FROM employees
      GROUP BY squad_id
      UNION
      SELECT NULL, NULL, SUM(salary) AS salary, 4 as order_column
      FROM employees) AS BUFF
ORDER BY ORDER_COLUMN, job_id, squad_id;