SELECT
	[order status]
	,[order region]
	,count([order id]) as 'Total orders'
	,round(count([order id]) * 100.00 / (select count(*) from DataCoSupplyChainDataset),2) as 'Order %' 
from DataCoSupplyChainDataset
group by [order status], [order region]
order by [order status], count([order ID]) desc
