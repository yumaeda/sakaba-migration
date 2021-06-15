CREATE TABLE IF NOT EXISTS `photos` (
    `id`            INT          NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of the photo',
    `restaurant_id` BINARY(16)            DEFAULT NULL COMMENT 'ID of the restaurant the photo belongs',
    `name`          VARCHAR(256) NOT NULL COMMENT 'Name of the photo',
    `type`          VARCHAR(128) NOT NULL COMMENT 'Type of the photo',
    `comment`       TEXT         NOT NULL DEFAULT '' COMMENT 'Comment for the photo',
    `create_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
