ALTER TABLE categories
        ADD COLUMN `id` INTEGER UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT
    COMMENT 'ID of the category' FIRST,

        ADD COLUMN `parent_id` INTEGER UNSIGNED NULL
    COMMENT 'ID of the parent category' AFTER id;
