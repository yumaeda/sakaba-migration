ALTER TABLE photos
        ADD comment TEXT
    COMMENT 'Comment for the photo'
      AFTER type;
