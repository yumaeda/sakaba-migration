ALTER TABLE restaurants
        ADD open_hours TEXT DEFAULT ''
    COMMENT 'Open hour of the restaurant',
      AFTER tel;
