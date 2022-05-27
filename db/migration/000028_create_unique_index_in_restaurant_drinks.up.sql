CREATE UNIQUE INDEX idx_restaurant_id_drink_id
    ON restaurant_drinks(restaurant_id, drink_id);
