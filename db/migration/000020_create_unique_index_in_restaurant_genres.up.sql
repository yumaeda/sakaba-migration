CREATE UNIQUE INDEX idx_restaurant_id_genre_id
    ON restaurant_genres(restaurant_id, genre_id);
