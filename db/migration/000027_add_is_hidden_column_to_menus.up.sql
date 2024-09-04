ALTER TABLE menus
        ADD is_hidden BOOLEAN NOT NULL DEFAULT 0
	COMMENT 'Whether the menu is hidden or not' AFTER is_min_price;
