# SQL Normalization Rules
SQL normalization is a process in database design to organize data to minimize redundancy and increase the integrity
It is achieved through a series of normal forms.

## First Normal Form (1NF)
Each table cell should have a single value, and each record must be unique.
## Second Normal Form (2NF)
All non-key attributes must depend on the whole primary key.
It makes sure that all information in a row is about that row and nothing else.
Eliminate partial dependencies in tables with composite primary keys.
## Third Normal Form (3NF)
- **Rule**: All attributes must directly depend on the primary key.
- **Explanation**: Remove transitive dependencies where one non-key attribute depends on another, which then depends on the primary key.

## Boyce-Codd Normal Form (BCNF)

- **What It Means**: A stricter version of 3NF.
- **Why It's Important**: It's about fine-tuning and making sure there's no redundant data.

## Fourth Normal Form (4NF)
- **Applies To**: Tables in BCNF.
- **Rule**: Tables should not have multi-valued dependencies.
- **Explanation**: Each attribute pair should be independent, with no non-trivial multivalued dependencies.

## Fifth Normal Form (5NF)

- **Applies To**: Tables in 4NF.
- **Rule**: Address complex join dependencies.
- **Explanation**: Ensure that tables cannot be decomposed further without losing data.



# Star and Snowflake Schemas in Data Warehousing

Data warehousing schemas are critical for organizing large volumes of data. Two popular approaches are the Star and Snowflake schemas.

## Star Schema

### Structure
- Central fact table connected directly to multiple dimension tables.
- Simple, with fewer joins required.

### Performance
- Generally faster for querying due to simplicity.
- Handles large volumes of data effectively.

### Dimension Tables
- Denormalized, containing aggregated data.
- Leads to redundancy but simplifies querying.

### Use Case
- Ideal for simpler, smaller-scale reporting.
- User-friendly for direct querying and reporting tools.

## Snowflake Schema

### Structure
- Similar to Star, but with normalized dimension tables, leading to more layers.
- More complex with additional joins.

### Performance
- Can be slower for querying due to increased joins.
- More efficient in storage, reducing redundancy.

### Dimension Tables
- Normalized into multiple related tables.
- Reduces redundancy, improving data integrity but adds complexity.

### Use Case
- Suitable for complex, larger-scale reporting where data integrity is crucial.
- Less user-friendly for direct querying by end-users.

## Comparison

- **Complexity**: Star schema is simpler; Snowflake schema is more complex.
- **Query Performance**: Star schema is faster; Snowflake schema may be slower.
- **Data Redundancy**: More in Star schema; minimized in Snowflake schema.
- **Storage Space**: Star schema may require more; Snowflake schema is efficient.
- **Maintenance**: Easier in Star schema; more complex in Snowflake schema.

The choice between Star and Snowflake schemas depends on the specific requirements, such as query performance, data integrity, and storage considerations.



# delete vs truncate vs drop
**DELETE**: Removes specific rows, or all rows if no condition is specified. Transaction-safe and slower for large data deletions.
**TRUNCATE**: Quickly removes all rows from a table, resetting identity counters. Generally cannot be rolled back (with exceptions in some SQL systems).
**DROP**: Completely removes a table and its data from the database. Cannot be rolled back.
Choosing between these commands depends on the specific requirements, such as whether you need to remove specific rows (DELETE), quickly clear a table (TRUNCATE), or entirely remove the table (DROP).
