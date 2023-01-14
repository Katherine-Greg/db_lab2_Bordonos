CREATE TABLE cellphones_data (
	cellphone_id INT NOT NULL,
	brand CHAR(50) NOT NULL,
	model CHAR(50) NOT NULL,
	operating_system CHAR(50) NOT NULL,
	internal_memory INT,
	RAM INT NOT NULL,
	performance NUMERIC(9,2) NOT NULL,
	main_camera INT NOT NULL,
	selfie_camera INT NOT NULL,
	battery_size INT NOT NULL,
	screen_size  NUMERIC(2,1) NOT NULL,
	weight INT NOT NULL,
	price INT NOT NULL,
	release_date date NOT NULL,
	PRIMARY KEY(cellphone_id)
);

CREATE TABLE cellphones_users (
	user_id INT NOT NULL,
	age INT NOT NULL,
	gender CHAR(50) NOT NULL,
	occupation CHAR(50) NOT NULL,
	PRIMARY KEY(user_id)
);

CREATE TABLE cellphones_rating (
	user_id INT NOT NULL,
	cellphone_id INT NOT NULL,
	rating INT NOT NULL,
	FOREIGN KEY(user_id) REFERENCES cellphones_users(user_id),
	FOREIGN KEY(cellphone_id) REFERENCES cellphones_data(cellphone_id)
);


