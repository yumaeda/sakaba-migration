CREATE TABLE IF NOT EXISTS `areas` (
    `id`            INT          NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of the area',
    `prefecture`    VARCHAR(24)  NOT NULL COMMENT 'Prefecture of the area',
    `name`          VARCHAR(128) NOT NULL COMMENT 'Name of the area',
    `value`         VARCHAR(64)  NOT NULL COMMENT 'Value assigned to the area',
    `create_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
