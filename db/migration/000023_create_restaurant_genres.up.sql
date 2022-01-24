CREATE TABLE IF NOT EXISTS `restaurant_genres` (
    `restaurant_id` BINARY(16)   NOT NULL COMMENT 'ID of the restaurant the genre belongs',
    `genre_id`      INT UNSIGNED NOT NULL COMMENT 'ID of the restaurant genre',
    CONSTRAINT `fk_restaurant_genre`
        FOREIGN KEY (genre_id) REFERENCES genres (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    `create_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
