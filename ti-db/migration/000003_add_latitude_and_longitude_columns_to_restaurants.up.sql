ALTER TABLE restaurants
        ADD latitude VARCHAR(24) DEFAULT NULL
    COMMENT 'Latitude of the restaurant';

ALTER TABLE restaurants
        ADD longitude VARCHAR(24) DEFAULT NULL
    COMMENT 'Longitude of the restaurant';
