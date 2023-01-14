SELECT * FROM cellphones_data;
SELECT * FROM cellphones_users;
SELECT * FROM cellphones_rating;

--Найпопулярніший бренд за кількістю користувачів
-- SELECT brand, COUNT(cellphones_rating.cellphone_id) AS Amount
-- FROM cellphones_data
-- INNER JOIN cellphones_rating
-- ON cellphones_data.cellphone_id = cellphones_rating.cellphone_id
-- GROUP BY cellphones_data.brand

--Рейтинг смартфонів за відгуками користувачів
-- SELECT model, AVG(rating) AS Rating
-- FROM cellphones_data
-- INNER JOIN cellphones_rating
-- ON cellphones_data.cellphone_id = cellphones_rating.cellphone_id
-- GROUP BY cellphones_data.model

--Стать користувачів
-- SELECT gender, COUNT(gender) AS Amount FROM cellphones_users
-- GROUP BY gender



