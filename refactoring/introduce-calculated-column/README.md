# Introduce Calculated Column

## Data-Migration Mechanics
- No data to be migrated, although the target column must be populated based on the calculation.

&nbsp;

## Performance Concern
- N/A

&nbsp;

## Potential Tradeoffs
- Since the calculated column may get out of sync with the actual data values, mechanism for automatically updating the column is needed.
  - Regular batch job
  - Triggers on the source data

&nbsp;

## Operation
### Create a new column in the target table
```sql
ALTER TABLE my_table
 ADD new_column INTEGER(11);
```

### Create trigger to keep data in sync (You can also you regular batch job instead)
```sql
CREATE OR REPLACE TRIGGER my_trigger_update
BEFORE UPDATE
    ON my_table
   FOR EACH ROW
   BEGIN
       UPDATE other_table
          SET other_calcuated_column = (NEW.my_column - OLD.my_column)
        WHERE other_id_column = NEW.my_id_column;
   END;

CREATE OR REPLACE TRIGGER my_trigger_insert
BEFORE INSERT
    ON my_table
   FOR EACH ROW
   BEGIN
       UPDATE other_table
          SET other_calcuated_column = NEW.my_column
        WHERE other_id_column = NEW.my_id_column;
   END;

CREATE OR REPLACE TRIGGER my_trigger_delete
BEFORE DELETE
    ON my_table
   FOR EACH ROW
   BEGIN
       UPDATE other_table
          SET other_calcuated_column = (-1 * OLD.my_column)
        WHERE other_id_column = OLD.my_id_column;
   END;
```

# Remark
Oracle allows a trigger to be invoked by multiple events; however, MySQL allows a trigger to be invoked by a single event. https://stackoverflow.com/questions/62033833/how-to-convert-trigger-if-inserting-from-oracle-to-mysql
