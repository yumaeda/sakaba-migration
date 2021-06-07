CREATE TABLE IF NOT EXISTS `restaurants` (
    `id`          INT          NOT NULL	AUTO_INCREMENT PRIMARY KEY COMMENT 'ID of the restaurant',
    `url`         TEXT         NOT NULL            COMMENT 'Home page URL of the restaurant',
    `image_name`  VARCHAR(512)          DEFAULT '' COMMENT 'Image name of the restaurant',
    `name`        VARCHAR(512) NOT NULL            COMMENT 'Name of the restaurant',
    `genre`       VARCHAR(512) NOT NULL            COMMENT 'Genre of the restaurant',
    `tel`         VARCHAR(11)  NOT NULL            COMMENT 'Phone number of the restaurant',
    `open_hours`  TEXT                  DEFAULT '' COMMENT 'Open hour of the restaurant',
    `address`     VARCHAR(512) NOT NULL            COMMENT 'Address of the restaurant',
    `area`        VARCHAR(64)  NOT NULL            COMMENT 'Area of the restaurant',
    `comment`     TEXT         NOT NULL	DEFAULT '' COMMENT 'Comment for the restaurant',
    `create_time` DATETIME     NOT NULL	DEFAULT CURRENT_TIMESTAMP,
    `update_time` DATETIME     NOT NULL	DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;

