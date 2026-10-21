# End-to-End Azure E-Commerce Data Engineering Pipeline

An end-to-end data engineering project that processes e-commerce data using **Azure Data Factory, Azure Data Lake Storage Gen2, and Azure Synapse Analytics**. The pipeline implements incremental data ingestion, Medallion architecture, analytical data modeling, scheduled execution, and automated email notifications using Azure Logic Apps.

## Project Overview

This project demonstrates how to build a cloud-based data pipeline that ingests e-commerce records in batches, transforms raw data into analytics-ready datasets, and organizes the data into Bronze, Silver, and Gold layers.

The pipeline is scheduled to run daily at **9:00 AM**, with email notifications providing pipeline execution status, run IDs, and error details for monitoring and troubleshooting.

## Architecture

```text
                 E-Commerce Data
                        |
                        v
              Azure Data Factory
          (Incremental Data Ingestion)
                        |
                        v
              Azure Data Lake Gen2
                        |
                        v
                 Bronze Layer
                  Raw Data
                        |
                        v
                 Silver Layer
          Data Cleaning & Transformation
               External Tables
                        |
                        v
                  Gold Layer
             Fact & Dimension Modeling
                        |
                        v
             Azure Synapse Analytics
              Analytical Querying
                        
        Azure Logic Apps
        Email Notifications
        Status | Run ID | Error Details

        Schedule: Daily at 9:00 AM
```

## Key Features

- **Incremental Data Ingestion:** Uses Azure Data Factory to ingest e-commerce data batch-wise into the Bronze layer, avoiding unnecessary full-data reloads.
- **Medallion Architecture:** Organizes data into Bronze, Silver, and Gold layers to support progressive data processing and analytics.
- **Data Cleaning and Transformation:** Cleans and transforms data in the Silver layer to prepare it for downstream analytical use.
- **External Table Creation:** Creates external tables in the Silver layer to support structured data access and querying.
- **Fact and Dimension Modeling:** Structures curated data into fact and dimension tables in the Gold layer for analytical reporting.
- **Scheduled Pipeline Execution:** Configures a scheduled trigger to execute the pipeline daily at 9:00 AM.
- **Automated Notifications:** Integrates Azure Logic Apps to send email notifications containing execution status, pipeline run IDs, and error details.

## Data Pipeline Workflow

### 1. Data Ingestion — Bronze Layer
- Configures Azure Data Factory to ingest e-commerce records in incremental batches.
- Loads the ingested data into the Bronze layer in Azure Data Lake Storage Gen2.
- Avoids unnecessary full reloads by processing incremental data.

### 2. Data Cleaning and Transformation — Silver Layer
- Cleans and transforms the ingested data.
- Prepares structured datasets for downstream processing.
- Creates external tables to enable data access and querying.

### 3. Data Modeling — Gold Layer
- Organizes curated data into fact and dimension tables.
- Separates business measures from descriptive attributes to support analytical queries.
- Makes processed data suitable for reporting and business analysis.

### 4. Scheduling and Monitoring
- Configures a scheduled trigger in Azure Data Factory for daily execution at 9:00 AM.
- Integrates Azure Logic Apps for automated email notifications.
- Includes pipeline status, run IDs, and error details to help identify and troubleshoot failures.

## Technology Stack

| Technology | Purpose |
|---|---|
| Azure Data Factory | Pipeline orchestration and incremental data ingestion |
| Azure Data Lake Storage Gen2 | Storage for Bronze, Silver, and Gold data layers |
| Azure Synapse Analytics | Data querying and analytical processing |
| SQL | Data transformation, external tables, and analytical data modeling |
| Azure Logic Apps | Automated email notifications |
| Scheduled Triggers | Daily pipeline execution |

## Medallion Architecture

| Layer | Purpose |
|---|---|
| **Bronze** | Stores incrementally ingested raw e-commerce data |
| **Silver** | Contains cleaned and transformed data, with external tables |
| **Gold** | Contains fact and dimension models for analytical reporting |

## Skills Demonstrated

- Cloud Data Engineering
- ETL/ELT Pipeline Development
- Incremental Data Processing
- Azure Data Factory Orchestration
- Azure Data Lake Storage
- SQL-Based Data Transformation
- Medallion Architecture
- Fact and Dimension Modeling
- Data Warehousing Concepts
- Workflow Scheduling and Monitoring
- Automated Error Notifications

## Prerequisites

To reproduce this project, you will need:

- An Azure subscription with access to the required Azure services.
- An Azure Data Factory instance.
- An Azure Data Lake Storage Gen2 account.
- An Azure Synapse Analytics workspace or the required Synapse resources.
- Azure Logic Apps access for configuring email notifications.
- SQL knowledge for data transformation and analytical modeling.

Resource configuration, permissions, storage paths, and connection settings depend on your Azure environment.

## Future Enhancements

- Implement automated data quality checks and validation rules.
- Add retry policies and more detailed failure handling.
- Integrate pipeline execution metrics and monitoring dashboards.
- Extend the pipeline to support additional e-commerce datasets and analytical use cases.

## Conclusion

This project demonstrates an end-to-end Azure data engineering workflow, covering incremental ingestion, multi-layer data processing, analytical data modeling, scheduled orchestration, and automated pipeline notifications. It provides practical experience with core cloud data engineering concepts using Microsoft Azure.
