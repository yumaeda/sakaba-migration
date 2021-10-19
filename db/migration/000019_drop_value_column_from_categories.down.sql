ALTER TABLE categories
        ADD value TINYINT UNSIGNED NOT NULL DEFAULT 0
    COMMENT 'Category value'
      AFTER name;
