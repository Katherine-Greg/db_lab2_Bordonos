INSERT INTO cellphones_data(cellphone_id,brand,model,operating_system,internal_memory,RAM,performance,main_camera,selfie_camera,battery_size,screen_size,weight,price,release_date)
VALUES
(1, 'Apple',   'iPhone 13 Mini',     'iOS',	    128, 4, 7.72, 12, 12, 2438, 5.4, 141, 699,  DATE('24/09/2021')),
(4, 'Apple',   'iPhone 13 Pro Max',	 'iOS',	    256, 6, 8.01, 12, 12, 4352, 6.7, 240, 1199, DATE('24/09/2021')),
(6, 'Asus',    'Zenfone 8',			 'Android', 128, 8, 6.76, 64, 12, 4000, 5.9, 169, 599,  DATE('12/05/2021')),
(11,'Samsung', 'Galaxy S22 Plus',	 'Android', 128, 8, 7.22, 50, 10, 4500, 6.6, 195, 899,  DATE('25/02/2022')),
(24,'Xiaomi',  'Redmi Note 11',      'Android', 128, 4, 2.44, 50, 13, 5000, 6.4, 179, 174,  DATE('09/02/2022')),
(28,'Sony',    'Xperia Pro',         'Android', 512, 12,6.82, 12, 8,  4000, 6.5, 225, 1998, DATE('27/01/2021'));

INSERT INTO cellphones_users(user_id,age,gender,occupation)
VALUES
(1,  40, 'Female', 'team worker in it'),
(6,	 55, 'Male',   'IT'),
(8,	 25, 'Female', 'Manager'),
(10, 23, 'Male',   'worker'),
(12, 28, 'Female', 'Accountant'),
(16, 31, 'Female', 'sales'),
(24, 57, 'Male',   'it'),
(25, 27, 'Female', 'Team leader'),
(26, 28, 'Male',   'FINANCE'),
(33, 30, 'Female', 'Healthcare');

INSERT INTO cellphones_rating(user_id,cellphone_id,rating)
VALUES
(1,  1,  8),
(6,  11, 5),
(8,  28, 8),
(10, 4, 9),
(12, 4, 4),
(16, 11, 10),
(24, 28, 9),
(25, 1,  9),
(26, 24, 5),
(33, 11, 8);

SELECT * FROM cellphones_data;
SELECT * FROM cellphones_users;
SELECT * FROM cellphones_rating;
