IF NOT EXISTS(select s.name, s.schema_id, t.name from sys.tables t join sys.schemas s on t.schema_id = s.schema_id
WHERE t.name = 'OrderReviewsPayment' and s.name = 'silver')
    CREATE EXTERNAL TABLE silver.OrderReviewsPayment (
        order_id VARCHAR(100),
        customer_id VARCHAR(100),
        order_status VARCHAR(50),
        order_purchase_timestamp DATETIME2,
        order_approved_at DATETIME2,
        order_delivered_carrier_date DATETIME2,
        order_delivered_customer_date DATETIME2,
        order_estimated_delivery_date DATETIME2,
        review_id VARCHAR(100),
        review_score INT,
        review_comment_title VARCHAR(4000),
        review_comment_message VARCHAR(8000),
        review_creation_date DATETIME2,
        review_answer_timestamp DATETIME2,
        payment_sequential VARCHAR(50),
        payment_type VARCHAR(50),
        payment_installments INT,
        payment_value DECIMAL(18,2)
    )
    WITH
    (
        LOCATION = 'enrichedOrder',
        DATA_SOURCE = silver_source,
        FILE_FORMAT = parquet
    );


SELECT COUNT(*) FROM silver.OrderReviewsPayment