# Drop Column

## Data Backup
- Make sure whether you need to preserve existing data in the column before you drop the column.

&nbsp;

## Performance Concern
- On tables containing many rows, the dropping of a column may run for a long time, making your table unavailable for update during the execution of Drop Column.

&nbsp;

## Schedule Pysical Removal
- To minimize the disruption, schedule the physical removal of the column to a time when the table is least used.

&nbsp;

## Operation
### Create a new table using the old table
```sql
CREATE TABLE my_table_new LIKE my_table;
```

### Remove the column in the new table
```sql
ALTER TABLE my_table_new
 DROP COLUMN column_to_delete;
```

### Show foreign keys in the old table
```sql
SHOW CREATE TABLE my_table;
```

### Apply those foreign keys to the new table
```sql
ALTER TABLE my_table_new
  ADD CONSTRAINT my_table_fk_1 FOREIGN KEY (column_1) REFERENCES other_table_1 (id),
  ADD CONSTRAINT my_table_fk_2 FOREIGN KEY (column_2) REFERENCES other_table_2 (id);
```

### Copy all columns but the one you want to delete
```sql
INSERT INTO my_table_new (column_1, column_2)
     SELECT column_1,
            column_2
       FROM my_table;
```

### Rename tables
```sql
RENAME TABLE my_table TO my_table_tmp;
RENAME TABLE my_table_new TO my_table;
```

### Delete the old table
```sql
DROP TABLE my_table_tmp;
```

&nbsp;

## Remark
As [Drop Column from Large Table](https://stackoverflow.com/questions/23173789/drop-column-from-large-table) mentions, Oracle's `ALTER TABLE SET UNUSED` is not supported by MySQL and MariaDB.
