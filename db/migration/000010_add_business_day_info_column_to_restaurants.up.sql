ALTER TABLE restaurants
  ADD business_day_info JSON NOT NULL DEFAULT '{}'
  COMMENT 'Contains the business day info as JSON format (complies with ISO standard 8601) and "8" for holiday';

ALTER TABLE restaurants
  ADD CONSTRAINT is_valid_json
CHECK (JSON_VALID(business_day_info));
