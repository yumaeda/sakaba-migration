CREATE TABLE IF NOT EXISTS `categories` (
    `id`        INTEGER UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT COMMENT 'ID of the category',
    `parent_id` INTEGER UNSIGNED NULL                                COMMENT 'ID of the parent category',
    `restaurant_id` BINARY(16)                                       COMMENT 'ID of the restaurant the category belongs',
    CONSTRAINT `fk_category_restaurant`
        FOREIGN KEY (restaurant_id) REFERENCES restaurants (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    `name`          VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'Category name',
    `create_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
