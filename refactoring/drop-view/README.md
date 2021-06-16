# Drop View

## Data-Migration Mechanics
- There is no data to migrate for this database refactoring.

## Operation
### Set transition period
- Set the transition period needed to identify and update any external programs that reference the view.

### Drop the view after the transition period
```sql
DROP VIEW my_view;
```
