create database purchase;
use purchase_hist;
-- imported my two dataset csv file through "table data import wizard".
select * from purchase_history;
select * from product_catalogue;
select purchase_history.product_Id,purchase_history.Sale_Qty,product_catalogue.Cat_Id
from purchase_history
join product_catalogue
on purchase_history.product_id=product_catlogue.product_id;
select product_id,COUNT(sale_qty)
FROM purchase_history
