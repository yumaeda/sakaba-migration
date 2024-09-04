ALTER TABLE categories
        ADD sort_order INTEGER UNSIGNED NOT NULL DEFAULT 0
    COMMENT 'Sort order of the category' AFTER restaurant_id;
