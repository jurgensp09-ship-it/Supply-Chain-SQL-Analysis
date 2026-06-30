SELECT
	[delivery status]
	, [shipping mode]
	, count([order id]) as 'Total orders'
	, round(count([order ID]) * 100.0 / (select count(*) from DataCoSupplyChainDataset), 2) as 'Order %'
	, sum([late_delivery_risk]) as 'Risk flag count'
	,ROUND(SUM([Late_delivery_risk]) * 100.0 / COUNT([Order Id]), 2) AS 'Risk %'
from DataCoSupplyChainDataset
group by [delivery status], [shipping mode]
order by [delivery status], count([order id]) DESC
