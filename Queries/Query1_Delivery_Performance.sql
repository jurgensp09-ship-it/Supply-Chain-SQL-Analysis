SELECT
	[Delivery Status]
	,count([Order Id]) as 'Total_Orders'
	,round(count([order id]) * 100.0  /(select count(*) from DataCoSupplyChainDataset), 2) as 'Percentage'
from DataCoSupplyChainDataset
	group by [Delivery Status]
	order by count([Order Id]) DESC
