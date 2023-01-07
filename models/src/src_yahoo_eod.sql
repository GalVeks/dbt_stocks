
--END OF DAY DATA
with eod_table as (
    select * from PC_FIVETRAN_DB.S3.RAW_YAHOO_EOD_DATA
    )

SELECT
    CAST(DATE AS DATE) Date
    ,ticker
    ,open
    ,high
    ,low
    ,close
    ,adj_close
    ,volume
    price_change
FROM eod_table
order by date desc

