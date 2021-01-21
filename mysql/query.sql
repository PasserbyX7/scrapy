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
  AND e.name = f.name
WHERE
  f.drawdown <= 30 -- 最大回撤
  AND f.sharpe_ratio > 1.3 -- 夏普率
  AND datediff(now(), f.create_time) >= 3 * 365 -- 基金运行时间
  AND datediff(now(), e.start_time) >= 3 * 365 -- 经理操盘时长
  AND SUBSTR(m.working_time, 1, INSTR(m.working_time, '年') -1) + 0 >= 4 -- 经理从业时间
  AND temp.cnt <= 10 -- 经理所管基金数
ORDER BY
  f.sharpe_ratio DESC,
  f.drawdown ASC,
  f.volatility DESC