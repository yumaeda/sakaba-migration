CREATE TABLE IF NOT EXISTS `restaurant_categories` (
    `id`          INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of the restaurant category',
    `name`        VARCHAR(256) NOT NULL COMMENT 'Category name',
    `create_time` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
