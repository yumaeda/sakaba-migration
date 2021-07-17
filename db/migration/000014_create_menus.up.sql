CREATE TABLE IF NOT EXISTS `menus` (
    `id`            BINARY(16)       NOT NULL PRIMARY KEY COMMENT 'ID of the menu',
    `restaurant_id` BINARY(16)                DEFAULT NULL COMMENT 'ID of the restaurant the menu belongs',
    CONSTRAINT `fk_menu_restaurant`
        FOREIGN KEY (restaurant_id) REFERENCES restaurants (id)
        ON DELETE CASCADE
        ON UPDATE RESTRICT,
    `category`      TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT 'Menu category',
    `name`          VARCHAR(512)     NOT NULL DEFAULT '' COMMENT 'Name of the menu',
    `name_jpn`      VARCHAR(512)     NOT NULL DEFAULT '' COMMENT 'Japanese name of the menu',
    `price`         INT UNSIGNED     NOT NULL DEFAULT 99999999 COMMENT 'Price of the menu',
    `create_time`   DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`   DATETIME         NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
