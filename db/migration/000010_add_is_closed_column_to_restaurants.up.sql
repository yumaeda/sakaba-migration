ALTER TABLE restaurants
        ADD is_closed BOOLEAN NOT NULL DEFAULT 0
    COMMENT 'Whether the restaurant is closed or not'
      AFTER longitude;
