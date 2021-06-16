# Introduce Surrogate Key

## Data-Migration Mechanics
- We must generate data in the introduced surrogate key column and assign these values to the foreign key columns in other tables.

&nbsp;

## Performance Concern
- N/A

&nbsp;

## Potential Tradeoffs
- Since a surrogate key has no business meaning, it cannot be used for searches.
- When *OriginalKey* is being used as a foreign key in other tables, you need to apply `Consolidate Key Strategy` and make similar updates to those tables.

## Operation
### Introduce the new key column
```sql
-- This column will need to be populated with unique values.
ALTER TABLE my_table
  ADD new_column VARCHAR(128);
```
### Add a new index
```sql
CREATE INDEX my_table_new_column_index
    ON my_table (new_column);
```
### Deprecate the original column
- At the end of transition period, the original key columns must be marked for demotion to alternate key status, or nonkey status.
### Add referential integrity triggers
- Triggers need to be introduced to populate the value of the foreign key columns during the transition period because the applications may not have been updated to do so.
```sql
CREATE OR REPLACE TRIGGER populate_surrogate_key_column
BEFORE INSERT
    ON other_table
   FOR EACH ROW
   BEGIN
       IF NEW.surrogate_fk_column IS NULL THEN
           SET NEW.surrogate_fk_column = populate_function(pk_column1, pk_column2, pk_column3);
       END IF;
       IF NEW.surrogate_fk_column IS NOT NULL THEN
           IF NEW.pk_column1 IS NULL
               OR NEW.pk_column2 IS NULL
               OR NEW .pk_column3 IS NULL
           THEN
               SET NEW.pk_column1 = retrieve_column1(surrogate_fk_column);
               SET NEW.pk_column2 = retrieve_column2(surrogate_fk_column);
               SET NEW.pk_column3 = retrieve_column3(surrogate_fk_column);
           END IF;
       END IF;
   END;
```

# Remark
- N/A
