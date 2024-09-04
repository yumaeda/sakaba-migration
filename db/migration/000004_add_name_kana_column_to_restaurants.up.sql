ALTER TABLE restaurants
        ADD name_kana VARCHAR(1024) DEFAULT NULL
    COMMENT 'Phonetic name of the restaurant'
      AFTER name;
