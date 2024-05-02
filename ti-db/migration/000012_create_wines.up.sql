CREATE TABLE IF NOT EXISTS `wines` (
    `id`            BINARY(16)   NOT NULL PRIMARY KEY COMMENT 'ID of the wine',
    `cepage`        TEXT         NOT NULL             COMMENT 'Cepage of the wine',
    `color`         TINYINT      NOT NULL DEFAULT 0   COMMENT 'Color of the wine',
    `comment`       TEXT         NOT NULL             COMMENT 'Comment for the wine',
    `country`       VARCHAR(128) NOT NULL DEFAULT '' COMMENT 'Country of the wine',
    `name`          VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'Name of the wine',
    `name_jpn`      VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'Japanese name of the wine',
    `producer`      VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'Name for the wine producer',
    `producer_jpn`  VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'Japanese name for the wine producer',
    `region`        VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'Name of the region where the wine was produced',
    `region_jpn`    VARCHAR(512) NOT NULL DEFAULT '' COMMENT 'Japanese name of the regions where the wine was produced',
    `vintage`       VARCHAR(64)  NOT NULL DEFAULT '' COMMENT 'Vintage of the wine',
    `create_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time`   DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
