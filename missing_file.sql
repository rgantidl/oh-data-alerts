SELECT
  DATE(event_time ) as day,
  COUNT(*) cnt
FROM
  `open-colleges.dc.enriched_2019*`
WHERE
  DATE(event_time ) =current_date()
GROUP BY
  1
ORDER BY
  1;