select top 1 mi.name_, SUM(omi.quantity) AS TotalOrdered
from menu_items mi 
 join orders__menu_items omi on mi.menu_items_id=omi.menu_items_id
 GROUP BY mi.name_
ORDER BY TotalOrdered DESC;