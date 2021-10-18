CREATE TABLE IF NOT EXISTS `categories` (
    `restaurant_id` BINARY(16)                DEFAULT NULL COMMENT 'ID of the restaurant the category belongs',
    CONSTRAINT `fk_category_restaurant`
        FOREIGN KEY (restaurant_id) REFERENCES restaurants (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    `name`          VARCHAR(512)     NOT NULL DEFAULT '' COMMENT 'Category name',
    `value`         TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Category value',
    `create_time`   DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`   DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
