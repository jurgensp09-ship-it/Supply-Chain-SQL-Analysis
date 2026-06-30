select [shipping mode]
	,count([order ID]) as 'Total Orders'
	,round(count([order ID]) * 100.0 / (select count(*) from DataCoSupplyChainDataset),2) as 'Order %'
	,round(avg([days for shipping (real)]), 2) as 'AVG for Shipping'
from DataCoSupplyChainDataset
group by [shipping mode]
order by round(avg([days for shipping (real)]), 2)
