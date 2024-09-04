CREATE TABLE IF NOT EXISTS `admin_users` (
    `id`          BINARY(16)   NOT NULL PRIMARY KEY COMMENT 'ID of the admin user',
    `email`       VARCHAR(50)  NOT NULL COMMENT 'Email of the admin user',
    `password`    VARCHAR(255) NOT NULL COMMENT 'Hashed password of the admin user',
    `create_time` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `update_time` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COLLATE utf8mb4_unicode_ci;
