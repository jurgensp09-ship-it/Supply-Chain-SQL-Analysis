SELECT	
	[customer segment]
	,count([order id]) as 'Total Orders'
	,round(count([order id]) * 100.0 / (select count(*) from DataCoSupplyChainDataset), 2) as 'Order %'
	,round(sum([sales]),2) as 'Total Sales'
from DataCoSupplyChainDataset
group by [customer segment]
order by round(count([order id]) * 100.0 / (select count(*) from DataCoSupplyChainDataset), 2) DESC
