# Drop Table
## Data Backup
- Make sure whether you need to preserve some or all of the data before you drop the table.

## Operation
### Set transition date
- Set the transition date according to the size of your system and dependencies.

### Rename the table as `drop_on_<transition_date>_<table>`
```sql
RENAME TABLE my_table TO drop_on_20220101_my_table;
```

### Delete referential integrity constraints against the table
```sql
SELECT TABLE_NAME,
       COLUMN_NAME,
       CONSTRAINT_NAME,
       REFERENCED_TABLE_NAME,
       REFERENCED_COLUMN_NAME
  FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE
 WHERE REFERENCED_TABLE_SCHEMA = my_database
   AND REFERENCED_TABLE_NAME = drop_on_20220101_my_table;

ALTER TABLE deleted_my_table
 DROP FOREIGN KEY other_table_fk_1,
 DROP FOREIGN KEY other_table_fk_2;
```

### Drop the table after the transition date
```sql
DROP TABLE  drop_on_20220101_my_table;
```
