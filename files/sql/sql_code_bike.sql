WITH cte as(
SELECT * from bike_share_yr_0
UNION
SELECT * FROM bike_share_yr_1)

SELECT 
dteday,
season,
a.yr,
workingday,
hr,
rider_type,
riders,
price,
COGS,
riders*price as revenue,
riders*price - COGS as profit


FROM cte a
LEFT JOIN cost_table b
ON a.yr = b.yr