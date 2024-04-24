# Ejercicio 1

qoop list-tables \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--password-file file:///home/hadoop/sqoop/scripts/sqoop.pass

# Ejercicio 2

sqoop eval --connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--password-file file:///home/hadoop/sqoop/scripts/sqoop.pass \
--query "select c.company_name , c.customer_id , c.postal_code  
from customers c 
where c.country like 'Argentina'"

# Ejercicio 3

sqoop import \ 
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--password-file file:///home/hadoop/sqoop/scripts/sqoop.pass \
--table orders \
--m 1 \
--target-dir /sqoop/ingest/northwind/orders \
--as-parquetfile \
--delete-target-dir

# Ejercicio 4

sqoop import \
--connect jdbc:postgresql://172.17.0.3:5432/northwind \
--username postgres \
--password-file file:///home/hadoop/sqoop/scripts/sqoop.pass \
--table products \
--m 1 \
--target-dir /sqoop/ingest/northwind/products_20 \
--as-parquetfile \
--where "units_in_stock > 20" \
--delete-target-dir

