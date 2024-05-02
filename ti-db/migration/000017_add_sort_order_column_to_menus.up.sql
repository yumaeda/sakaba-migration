ALTER TABLE menus
        ADD sort_order INTEGER UNSIGNED NOT NULL DEFAULT 0
    COMMENT 'Sort order of the menu' AFTER restaurant_id;
