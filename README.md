# Local Commerce & Flexible Delivery Marketplace
## Business Analyst Portfolio Case Study

A proposed marketplace where customers discover products from nearby physical retailers, place orders through one app, and receive same-day delivery. Retailers prepare packages; delivery partners collect them. The model groups nearby store pickups to limit unnecessary detours.

**Important:** This is a proposed concept, not a launched business. All supplied CSV records and dashboard figures are simulated examples, not real customer data, market research, or business performance.

### Files
- `dashboard/index.html` — interactive operations dashboard.
- `dashboard/dashboard_data.json` — metrics used by the dashboard.
- `data/` — simulated CSV data for customers, stores, partners, orders, and pickup stops.
- `sql/schema.sql` — PostgreSQL schema.
- `sql/analysis_queries.sql` — SQL analysis questions.
- `requirements.md` — initial requirements and business rules.
- `data_dictionary.md` — field and KPI definitions.

### View dashboard
Open `dashboard/index.html`. If the browser blocks local JSON loading, run `python3 -m http.server 8000` from this project folder and visit `http://localhost:8000/dashboard/`.

### SQL
Create a PostgreSQL database, run `sql/schema.sql`, import the CSVs into their matching tables, then run `sql/analysis_queries.sql`. CSV import steps depend on your PostgreSQL client (pgAdmin, DBeaver, or psql).

### Suggested GitHub repository
`local-commerce-delivery-case-study`

### Portfolio description
“Developed a Business Analyst case study for a proposed local-commerce and same-day delivery marketplace. Defined operational requirements, designed a relational SQL schema, created clearly labeled simulated data, wrote SQL performance queries, and built an interactive KPI dashboard to examine delivery efficiency, multi-store pickup complexity, and order reliability.”

### Next iteration
Validate customer demand, retailer willingness to prepare orders for third-party pickup, partner availability, insurance and legal obligations, payment/refund workflows, and unit economics before treating assumptions as proven.

## Additional plug-in-ready files
- `Local_Commerce_Analysis_Workbook.xlsx` — Excel workbook with source-data tabs, KPI definitions, summary tables, and built-in charts.
- `tableau/` — CSVs and a Tableau setup guide for building a Tableau dashboard.
- `Lucidchart_Process_Flow.svg` — workflow diagram that can be imported or used as a reference in Lucidchart.
