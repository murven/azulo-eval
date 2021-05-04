# Step 1

Creating table in mysql called airportdb
- Credential default
- user: root
- pass:

# Step 2

Creating Directus project:
- npx create-directus-project airport-directus

User and passwod
- userName: gabriel@directus.com
- password: a123456789!

# Step 3
Download Flyway and conect to data base airport

- Created files migration called
    - V1_1__Create_location_table.sql
    - V1_2__Create_airport_operator_table.sql
    - V1_3__Create_airport_table.sql