ALTER TABLE menus
        ADD is_min_price BOOLEAN NOT NULL DEFAULT 0
	COMMENT 'Indicates whether the price is a minimum price or not' AFTER price;
