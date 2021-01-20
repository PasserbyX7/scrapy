SELECT
  f.id,
  f.name as 'name',
  m.name as 'manager',
  f.drawdown as 'drawdown',
  f.volatility as 'volatility',
  f.sharpe_ratio as 'sharpe_ratio'
FROM
  fund f
  JOIN fund_manager m ON f.fund_manager_id = m.id
  JOIN experience e ON e.fund_manager_id = m.id
  JOIN (
    SELECT
      m.id,
      count(1) as 'cnt'
    FROM
      fund_manager m
      JOIN experience e ON m.id = e.fund_manager_id
    GROUP BY
      e.fund_manager_id
  ) temp ON temp.id = m.id
  AND e.name COLLATE utf8mb4_0900_ai_ci = f.name
WHERE
  f.drawdown <= 30
  AND datediff(now(), f.create_time) >= 3 * 365
  AND datediff(now(), e.start_time) >= 3 * 365
  AND SUBSTR(m.working_time, 1, INSTR(m.working_time, '年') -1) + 0 >= 4
  AND temp.cnt <= 6
ORDER BY
  f.drawdown ASC,
  f.volatility DESC,
  f.sharpe_ratio ASC