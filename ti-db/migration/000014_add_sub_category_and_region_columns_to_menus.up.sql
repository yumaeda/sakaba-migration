ALTER TABLE menus
        ADD sub_category TINYINT UNSIGNED NOT NULL DEFAULT 0
	COMMENT 'Sub category of the menu' AFTER category;

ALTER TABLE menus
        ADD region TINYINT UNSIGNED NOT NULL DEFAULT 0
	COMMENT 'Region the menu belongs' AFTER sub_category;
