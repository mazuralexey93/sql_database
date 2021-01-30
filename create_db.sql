/*скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами)*/
DROP DATABASE IF EXISTS fitness;
CREATE DATABASE fitness;
USE fitness;

DROP TABLE IF EXISTS clients;
CREATE TABLE clients(
    id SERIAL PRIMARY KEY,  
    firstname VARCHAR(100) NOT NULL,    
    lastname VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    phone BIGINT UNSIGNED UNIQUE,   
    birthday_at DATE,
    created_at DATETIME DEFAULT NOW(),
  	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
INDEX idx_clients_username (firstname, lastname)
) COMMENT 'клиенты';
    

DROP TABLE IF EXISTS subscription_type;
CREATE TABLE subscription_type(
	id SERIAL PRIMARY KEY,
	subscription_name VARCHAR(100) DEFAULT NULL UNIQUE,
	price DECIMAL (11,2) NOT NULL
) COMMENT 'различные абонементы, например круглосуточный доступ, только вечерние, на год или полгода';

DROP TABLE IF EXISTS subscription;
CREATE TABLE subscription(
	id SERIAL PRIMARY KEY,
	client_id BIGINT UNSIGNED NOT NULL,
	subscription_type_id BIGINT UNSIGNED NOT NULL,	
	started_at DATETIME DEFAULT NOW(),
  	finished_at DATETIME DEFAULT NULL,
  	is_active BIT,
	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
FOREIGN KEY (client_id) REFERENCES clients(id),
FOREIGN KEY (subscription_type_id) REFERENCES subscription_type(id),
 
INDEX idx_subscription (client_id)
) COMMENT 'абонемент'; 
	


DROP TABLE IF EXISTS branches ;
CREATE TABLE  branches(
	id SERIAL PRIMARY KEY,
	club_name VARCHAR(100),
	club_adress TEXT
) COMMENT 'Филиалы';
	
    
DROP TABLE IF EXISTS trainers ;
CREATE TABLE  trainers(
	id SERIAL PRIMARY KEY,
	firstname VARCHAR(100) NOT NULL ,    
    lastname VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    wage INT UNSIGNED DEFAULT 30000
   
) COMMENT 'Тренеры'; 
   

DROP TABLE IF EXISTS discounts;
CREATE TABLE discounts (
	id SERIAL PRIMARY KEY,
	client_id BIGINT UNSIGNED DEFAULT NULL,
	subscription_id INT UNSIGNED DEFAULT NULL,
	product_id INT UNSIGNED DEFAULT NULL,
	discount FLOAT UNSIGNED DEFAULT 0.0  COMMENT 'Величина скидки от 0.0 до 1.0',
	started_at DATETIME DEFAULT NOW(),
	finished_at DATETIME DEFAULT NOW(),
	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,

KEY index_of_client_id(client_id),
KEY index_of_subscription_id (subscription_id),
KEY index_of_product_id(product_id)
  
) COMMENT = 'Скидки на продукцию или абонементы';
   
   
DROP TABLE IF EXISTS products;
CREATE TABLE products (
	id SERIAL PRIMARY KEY,
	name VARCHAR(100),
	desription TEXT,
	price DECIMAL (11,2),
    created_at DATETIME DEFAULT NOW(),
	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP
)COMMENT = 'дополнительные услуги по прайсу (например, блок персональных тренировок, спортпит и др.';


DROP TABLE IF EXISTS group_trainings;
CREATE TABLE group_trainings(
	id SERIAL PRIMARY KEY,
	name_training VARCHAR(100), 
	description TEXT,
	started_at DATETIME DEFAULT NULL,
  	club_id BIGINT UNSIGNED NOT NULL,
  	trainer_id BIGINT UNSIGNED NOT NULL,
  	client_id BIGINT UNSIGNED NOT NULL,
  	
FOREIGN KEY (client_id) REFERENCES clients(id),
FOREIGN KEY (trainer_id) REFERENCES trainers(id),
FOREIGN KEY (club_id) REFERENCES branches(id)
)COMMENT = 'групповые тренировки';


DROP TABLE IF EXISTS personal_trainings;
CREATE TABLE personal_trainings(
	id SERIAL PRIMARY KEY,
	started_at DATETIME DEFAULT NULL,
  	club_id BIGINT UNSIGNED NOT NULL,
  	trainer_id BIGINT UNSIGNED NOT NULL,
  	client_id BIGINT UNSIGNED NOT NULL,   
  	
FOREIGN KEY (client_id) REFERENCES clients(id),
FOREIGN KEY (trainer_id) REFERENCES trainers(id),
FOREIGN KEY (club_id) REFERENCES branches(id)
)COMMENT = 'персональные тренировки';


DROP TABLE IF EXISTS sections;
CREATE TABLE sections(
	id SERIAL PRIMARY KEY,
	name_section VARCHAR(100), 
	description TEXT,
	started_at DATETIME DEFAULT NULL,
  	club_id BIGINT UNSIGNED NOT NULL,
  	trainer_id BIGINT UNSIGNED NOT NULL,
  	client_id BIGINT UNSIGNED NOT NULL,
  	
FOREIGN KEY (client_id) REFERENCES clients(id),
FOREIGN KEY (trainer_id) REFERENCES trainers(id),
FOREIGN KEY (club_id) REFERENCES branches(id)
)COMMENT = 'секции и единоборства';


DROP TABLE IF EXISTS clients_branches;
CREATE TABLE clients_branches(
	client_id BIGINT UNSIGNED NOT NULL,
	branch_id BIGINT UNSIGNED NOT NULL,

	PRIMARY KEY (client_id, branch_id),
	FOREIGN KEY (client_id) REFERENCES clients(id),
	FOREIGN KEY (branch_id) REFERENCES branches(id)

)COMMENT 'клиенты, которые могут посещать те или иные филиалы клубов';


DROP TABLE IF EXISTS accounting_table;
CREATE TABLE accounting_table(
	is_paid BIT,
	client_id BIGINT UNSIGNED NOT NULL,
	subscription_id BIGINT UNSIGNED NOT NULL,
	created_at DATETIME DEFAULT NOW(),
  	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
	
	FOREIGN KEY (client_id) REFERENCES clients(id),
	FOREIGN KEY (subscription_id) REFERENCES subscription(id)
)COMMENT 'Таблица учета';


DROP TABLE IF EXISTS achievements;
CREATE TABLE achievements(
	id SERIAL PRIMARY KEY,
	name_achievement VARCHAR(100), 
	description TEXT,
  	club_id BIGINT UNSIGNED NOT NULL,
  	trainer_id BIGINT UNSIGNED NOT NULL,
  	client_id BIGINT UNSIGNED NOT NULL,
  	created_at DATETIME DEFAULT NOW(),
  	updated_at DATETIME ON UPDATE CURRENT_TIMESTAMP,
  	
  	FOREIGN KEY (client_id) REFERENCES clients(id),
	FOREIGN KEY (trainer_id) REFERENCES trainers(id),
	FOREIGN KEY (club_id) REFERENCES branches(id),
	
INDEX idx_achievement(name_achievement, client_id)

	
)COMMENT = 'Достижения';
