# How to run (Quick - using DB Browser for SQLite)

1. Install DB Browser for SQLite (free) or use any SQL client (DBeaver, pgAdmin, MySQL Workbench).
2. Create a new SQLite database file (e.g., pharma.db).
3. Import CSVs:
   - File → Import → Table from CSV file → choose `data/medicines.csv` → table name `medicines`.
   - File → Import → Table from CSV file → choose `data/sales.csv` → table name `sales`.
4. Open the **Execute SQL** tab and run queries from `queries.sql`.
5. Export results as CSV for reporting (optional).