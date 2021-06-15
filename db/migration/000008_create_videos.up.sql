CREATE TABLE IF NOT EXISTS `videos` (
    `id`            INT          NOT NULL AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of the video',
    `restaurant_id` BINARY(16)   NOT NULL COMMENT 'ID of the restaurant the video belongs',
    `name`          VARCHAR(256) NOT NULL COMMENT 'Name of the video',
    `url`           TEXT         NOT NULL COMMENT 'URL of the video',
    `create_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
