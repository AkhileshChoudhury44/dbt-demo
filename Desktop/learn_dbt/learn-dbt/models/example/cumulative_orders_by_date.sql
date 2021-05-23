{{ config(materialized='table') }}
select O_ORDERDATE,O_TOTALPRICE,
sum(O_TOTALPRICE) over (order by O_ORDERDATE asc rows between unbounded preceding and current row) as cumsulative
from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" 