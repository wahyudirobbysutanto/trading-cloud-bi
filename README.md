# Cloud Migration: SQL Server to AWS RDS + Power BI

Hands-on project to simulate real-world data migration and reporting using AWS RDS and Power BI

This project demonstrates a practical cloud migration workflow by moving a local SQL Server database to **AWS RDS**, then visualizing the data using **Power BI**.

It is designed to simulate a real-world migration scenario, focusing on cloud fundamentals, data integration, and reporting — aimed at developing hands-on experience rather than just certification.

## 🤔 Why This Matters

This project reflects core cloud skills often required in data roles:
- Real-world cloud service usage (AWS RDS, security group setup)
- Practical ETL/data migration via SSMS
- Data connectivity and dashboard design for business reporting


## 🔧 Stack

- SQL Server (Local & RDS)
- AWS RDS (Free Tier)
- SSMS (SQL Server Management Studio)
- Power BI Desktop

## 🏛️ Architecture

This project follows a simple, yet effective, cloud data workflow:

`[Local SQL Server DB] ---> [SSMS Import/Export Wizard] ---> [AWS RDS Instance] <--- [Power BI Desktop]`

## 💡 Key Capabilities Demonstrated

- Cloud Database Provisioning: Successfully configured and deployed a public-facing AWS RDS instance, including networking and security group setup.
- Data Migration: Executed a database migration from an on-premise environment to AWS Cloud using standard industry tools (SSMS).
- Cloud BI Integration: Established a direct connection from a leading BI tool (Power BI) to a cloud database, enabling real-time data analysis.

## 📁 Project Structure

```
├── screenshots/
│   ├── rds-instance.png          # AWS RDS setup
│   ├── ssms-connection.png       # SSMS connected to RDS
│   ├── power-bi-connect-rds.png  # Power BI connection to RDS
│   ├── power-bi-load-data.png    # Loaded table preview
│   ├── power-bi-price-ema.png    # Visualization page 1
│   ├── power-bi-summary.png      # Visualization page 2
├── powerbi/
│   ├── dashboard.pbix            # PowerBI
├── sql/
│   ├── schema.sql                # SQL Script of the table and schema that used
└── README.md
```

## ⚙️ Replication Steps

1.  **Provision AWS RDS:** Create a new SQL Server instance on AWS RDS (Free Tier eligible). Configure the security group to allow inbound traffic from your local IP address.
2.  **Deploy Schema:** Use the `schema.sql` script in the `/sql` folder to create the table structure in the new RDS database.
3.  **Migrate Data:** Use the SSMS Import/Export Wizard to move data from a local SQL Server source to the target RDS instance.
4.  **Connect Power BI:** Open `dashboard.pbix`. Edit the data source credentials to point to your new AWS RDS endpoint.

## 📊 Power BI Dashboard Overview

- **Page 1**: Stock Price Chart
  - Column chart for closing price
  - Line chart for EMA 8 and EMA 20
  - The data is top last 5
  - Dropdown slicers for Ticker

- **Page 2**: Summary Dashboard
  - Cards: Average EMA8, EMA20, and Close
  - Pie chart: Sample asset distribution
  - Date filter interaction
  - Stock filter interaction (cards affected, pie not)

## 📸 Screenshots

- AWS RDS Instance  
  ![RDS](screenshots/rds-instance.png)

- SSMS Connected to RDS  
  ![SSMS](screenshots/ssms-connection.png)

- Power BI Connected to RDS  
  ![PowerBI Connect](screenshots/power-bi-connect-rds.png)

- Price + EMA Chart  
  ![Page 1](screenshots/power-bi-price-ema.png)

- Summary Dashboard  
  ![Page 2](screenshots/power-bi-summary.png)

## 📥 Download

- [View Power BI dashboard](powerbi/dashboard.pbix)
- [Browse screenshots](screenshots/)


## 🔐 Notes

- The RDS instance is secured with a custom security group allowing only IP-based access.
- No real financial data is used — the dataset is a placeholder.

## 👤 Author

Created by **Wahyudi Robby Sutanto** as a personal cloud practice project.