CREATE TABLE IF NOT EXISTS `restaurant_drinks` (
    `restaurant_id` BINARY(16)   NOT NULL COMMENT 'ID of the restaurant the drink belongs',
    `drink_id`      INT UNSIGNED NOT NULL COMMENT 'ID of the drink',
    CONSTRAINT `fk_restaurant_drink`
        FOREIGN KEY (drink_id) REFERENCES drinks (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
