SELECT
  DATE(event_time ) as day,
  COUNT(*) cnt
FROM
  @.dc.enriched_2019*`
WHERE
  DATE(event_time ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
   
SELECT
   CAST(date AS DATE) AS date,
  COUNT(*) cnt
FROM
  @.dcm.cost_2019*`
WHERE
  CAST(date AS DATE) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY 1;
     
SELECT
  CAST(date AS DATE) as day,
  sum(mediaCost) spend
FROM
  @.dcm.cost_2019*`
WHERE
  CAST (date AS DATE ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
  
SELECT
  CAST(date_start  AS DATE) AS date,
  COUNT(*) cnt
FROM
  @.facebook.cost_2019*`
WHERE
  CAST(date_start  AS DATE) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
order by 1;
                
SELECT
     CAST(date_start  AS DATE) as day,
  sum(spend) as spend
FROM
  @.facebook.cost_2019*`
WHERE
  CAST (date_start  AS DATE )BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
 
SELECT
  CAST(event_time AS DATE) AS date,
  COUNT(*) AS cnt
FROM
  @.facebook.exposure_enriched_2019*`
WHERE
  CAST(event_time AS DATE) BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 05 DAY)
  AND CURRENT_DATE()
GROUP BY
  1
ORDER BY
  1;

SELECT
  CAST(date   AS DATE) AS date,
  COUNT(*) cnt
FROM
  @.kenshoo.cost_2019*`
WHERE
  CAST(date   AS DATE) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
order by 1;
                
SELECT
  CAST(date AS DATE) as day,
  sum(cost) spend
FROM
  @.kenshoo.cost_2019*`
WHERE
  CAST ( date  AS DATE )BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
        
SELECT
  CAST(date AS DATE) as day,
   count(*) as cnt
FROM
  @.adwords.cost_2019*`
WHERE
  CAST ( date  AS DATE ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
                
SELECT
  CAST(date AS DATE) as day,
   sum(cost) as spend
FROM
  @.adwords.cost_2019*`
WHERE
  CAST ( date  AS DATE ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
                
SELECT
  CAST(TimePeriod  AS DATE) as day,
  sum(Spend ) as spend
FROM
  @.bing.cost_2019*`
WHERE
  CAST ( TimePeriod   AS DATE ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
                
SELECT
  CAST(TimePeriod  AS DATE) as day,
  count(*) as cnt
FROM
  @.bing.cost_2019*`
WHERE
  CAST ( TimePeriod   AS DATE ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
      
SELECT
  CAST(dateTime  AS DATE) as day,
   count(*) as cnt
FROM
  @.criteo.cost_2019*`
WHERE
  CAST ( dateTime    AS DATE ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1
;
                
SELECT
  CAST(dateTime  AS DATE) as day,
 sum(cost) as spend
FROM
  @.criteo.cost_2019*`
WHERE
  CAST ( dateTime    AS DATE ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1
;
  
SELECT
  CAST(date AS DATE) as date,
  count(*) as cnt
FROM
  @.dcm.search_ads_campaign_2019*`
WHERE
  CAST(date AS DATE) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
                
SELECT
  CAST(date AS DATE) as date,
  SUM(cost) as spend
FROM
  @.dcm.search_ads_campaign_2019*`
WHERE
  CAST(date AS DATE) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
    
SELECT
  CAST(date AS DATE) as date,
  count(*) as cnt
FROM
  @.dcm.search_ads_keyword_2019*`
WHERE
  CAST(date AS DATE) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
                
SELECT
  CAST(date AS DATE) as date,
  SUM(cost) as spend
FROM
  @.dcm.search_ads_keyword_2019*`
WHERE
  CAST(date AS DATE) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
                
SELECT
  DATE(event_time ) as day,
  SUM(media_cost ) as spend
FROM
  @.email_enriched_2019*`
WHERE
  DATE(event_time ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
GROUP BY
  1
ORDER BY
  1;
  
SELECT
  DATE(event_time ) AS date,
  COUNT(*) AS cnt
FROM
  @.ixi.transactions_enriched`
WHERE
  DATE(event_time ) BETWEEN DATE_SUB(CURRENT_DATE(), INTERVAL 10 DAY)
  AND CURRENT_DATE()
GROUP BY
  1
ORDER BY
  1;
                  
SELECT
   DATE(event_time) as date,
  COUNT(DISTINCT path_id) as conversions
FROM
  @.pathing.paths_2019*`
WHERE
  DATE(event_time ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
  AND channel NOT IN('internal')
GROUP BY 1
ORDER BY
  1;
                
SELECT
   DATE(event_time ) as date,
  channel,
  COUNT(DISTINCT path_id) as conversions
FROM
  @.pathing.paths_2019*`
WHERE
  DATE(event_time ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
  AND channel NOT IN('internal')
GROUP BY
  1,2
ORDER BY
  1;
   
SELECT
path_length ,
COUNT(DISTINCT path_id) cnt  
FROM
  @.pathing.paths_2019*`
WHERE
  DATE(event_time ) =current_date()
  AND channel NOT IN('internal')
GROUP BY
  1
ORDER BY
  1;
                
SELECT
   path_length,
  channel,
  COUNT(DISTINCT path_id) cnt
FROM
  @.pathing.paths_2019*`
WHERE
  DATE(event_time )=current_date()
  AND channel NOT IN('internal')
  --and path_length <50
GROUP BY
  1,2
ORDER BY
  1,2;
        
SELECT
  DATE(event_time ) as day,
  SUM(credit_weighted ) as rev
FROM
  @.pathing.paths_2018*`
WHERE
  DATE(event_time ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
  AND channel NOT IN('internal')
GROUP BY
  1
ORDER BY
  1
 ;
                
SELECT
  DATE(event_time ) as day,
  channel,
  SUM(credit_weighted ) as rev
FROM
  @.pathing.paths_2018*`
WHERE
  DATE(event_time ) BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
  AND channel NOT IN('internal')
GROUP BY
  1,2
ORDER BY
  1
 ;
                
SELECT
  date,
  channel,
  SUM(media_cost) spend
FROM
  @.enriched_cost_data.aggregated_cost_2018*`
WHERE
  date BETWEEN DATE_SUB(current_date(), INTERVAL 5 DAY)
  AND current_date()
  AND channel NOT IN('internal')
GROUP BY
  1,
  2
ORDER BY
  1,
  2;
  
 SELECT
  'null_campaign' as campaign,
  COUNT(*) as count
FROM
  @.pathing.paths_2019*`
WHERE
  campaign_name IS NULL and DATE(event_time)=current_date()
UNION ALL
SELECT
  'total_campaign' as campaign,
  COUNT(*)
FROM
  @.pathing.paths_2019*`
WHERE
  1=1 and DATE(event_time)=current_date()
  UNION ALL
SELECT
  'empty_campaign' as campaign,
  COUNT(*)
FROM
  @.pathing.paths_2019*`
WHERE
  campaign_name =''  and DATE(event_time)=current_date()
  ;