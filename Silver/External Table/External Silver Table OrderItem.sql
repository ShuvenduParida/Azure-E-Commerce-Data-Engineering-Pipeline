IF NOT EXISTS(select s.name, s.schema_id, t.name from sys.tables t join sys.schemas s on t.schema_id = s.schema_id
WHERE t.name = 'OrderItems' and s.name = 'silver')
    CREATE EXTERNAL TABLE silver.OrderItems (
    order_id VARCHAR(100),
    order_item_id VARCHAR(100),
    product_id VARCHAR(100),
    seller_id VARCHAR(100),
    shipping_limit_date DATETIME2,
    price DECIMAL(18,2),
    freight_value DECIMAL(18,2)
    )
    WITH
    (
        LOCATION = 'OrdItemTRansformed',
        DATA_SOURCE = silver_source,
        FILE_FORMAT = parquet
    );

SELECT * from silver.OrderItems



