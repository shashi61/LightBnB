SELECT reservations.*, properties.*, avg(property_reviews.rating)
FROM properties
JOIN reservations ON property_id = properties.id
JOIN property_reviews ON reservation_id = reservations.id
GROUP BY reservations.id
ORDER BY reservations.start_date;