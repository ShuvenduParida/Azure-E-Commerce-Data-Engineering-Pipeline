CREATE MASTER KEY ENCRYPTION BY PASSWORD = ''

--------------------------
-- Managed Credential
--------------------------
CREATE DATABASE SCOPED CREDENTIAL shuv_cred
WITH IDENTITY = 'Managed Identity'

--------------------------
-- External Data Source
--------------------------

CREATE EXTERNAL DATA SOURCE silver_source
WITH
(
    LOCATION = 'https://ecommerceproject8.dfs.core.windows.net/silver/',
    CREDENTIAL = shuv_cred
)

CREATE EXTERNAL DATA SOURCE gold_source
WITH
(
    LOCATION = 'https://ecommerceproject8.dfs.core.windows.net/gold/',
    CREDENTIAL = shuv_cred
)



CREATE EXTERNAL FILE FORMAT parquet
WITH
(  
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


