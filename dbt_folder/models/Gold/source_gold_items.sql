WITH dedup_query AS
(
SELECT
    *,
    ROW_NUMBER() OVER (PARTITION BY items_id ORDER BY updateDate DESC) as deduplication_id
FROM
    {{ source('source', 'items') }}
)
SELECT
    items_id,item_name,item_category,updateDate
FROM
    dedup_query
WHERE
    deduplication_id = 1
