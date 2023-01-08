
--END OF DAY DATA
with eod_table as (
    select * from FT_DB.FT_STAGING.RAW_S_3_YAHOO_EOD
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

