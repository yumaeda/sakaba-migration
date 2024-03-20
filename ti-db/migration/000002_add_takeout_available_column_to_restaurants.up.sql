ALTER TABLE restaurants
        ADD takeout_available BOOLEAN NOT NULL DEFAULT 1
    COMMENT 'Indicates whether takeout is available for the restaurant';
