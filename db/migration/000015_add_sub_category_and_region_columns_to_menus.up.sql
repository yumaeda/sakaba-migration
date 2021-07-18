ALTER TABLE menus
        ADD sub_category TINYINT UNSIGNED NOT NULL DEFAULT 0
	COMMENT 'Sub category of the menu' AFTER category,

        ADD region TINYINT UNSIGNED NOT NULL DEFAULT 0
	COMMENT 'Region the menu belongs' AFTER sub_category;
