
/*Требования к курсовому проекту:
Составить общее текстовое описание БД и решаемых ею задач; +
минимальное количество таблиц - 10; 
скрипты создания структуры БД (с первичными ключами, индексами, внешними ключами); script create_db.sql
создать ERDiagram для БД;
скрипты наполнения БД данными;+ script filling_db.sql
скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы); 
представления (минимум 2); 
хранимые процедуры / триггеры; 
Примеры: описать модель хранения данных популярного веб-сайта: кинопоиск, booking.com, wikipedia, интернет-магазин, geekbrains, госуслуги...
Думайте об этом задании, как о том, чем Вы похвастаетесь на своем следующем собеседовании.
Удачи!*/

Тема курсового проекта: Сеть спортивных клубов

https://sportlifeclub.ru
https://www.fitnesshouse.ru

#генерация данных 
https://filldb.info

/*общее текстовое описание БД и решаемых ею задач

База данных соответствует деятельности сети спортивных клубов, основными сущностями являются:
клиенты, абонементы, тренеры, филиалы спортивных клубов, программы тренировок, таблица учета абонементов, скидки и акции, групповые и персональные тренировки, секции, личные достижения клиентов, тренеров или клубов.

Задачи, решаемые с помощью базы данных: хранение инфомации о клиентах, оплате абонементов (?) и персонале спортивных клубов.
Спект задач может быть расширен в зависимости от конкретных запросов к базе данных.*/


#скрипты характерных выборок (включающие группировки, JOIN'ы, вложенные таблицы); 
                             
#1 Средний возраст клиентов клубов      

SELECT
AVG (TIMESTAMPDIFF(YEAR, birthday_at, NOW())) AS avg_age 
FROM clients c ;                  
                         
#2. Показать клиентов, у кого только утренние абонементы  

	SELECT 
		c.id,
		CONCAT(c.firstname, ' ', c.lastname) AS name,
		c.phone,
		c.email
	FROM clients c 
	JOIN subscription s2 ON c.id = s2.client_id 
	WHERE s2.subscription_type_id = 4;	

#3 Показать всех клиентов, кто не оплатил абонемент (view)
CREATE OR REPLACE VIEW debtors
AS
	SELECT 
		id,
		CONCAT(c.firstname, ' ', c.lastname) AS name,
		c.phone,
		c.email
	FROM clients c 
	JOIN accounting_table at2 ON c.id = at2.client_id
	WHERE at2.is_paid = 0;

SELECT * FROM  debtors ;

#4. Показать расписание персональных тренировок в хронологическом порядке (view)
CREATE OR REPLACE VIEW personal_trainings_schedule	
AS
	SELECT 
		pt.started_at as 'when', 
		CONCAT(b.club_name,', ', b.club_adress) as 'where',
		CONCAT(c2.firstname, ' ', c2.lastname) AS 'client name',
		CONCAT(t2.firstname, ' ', t2.lastname) AS 'trainer_name'

	FROM personal_trainings pt
        JOIN branches b ON pt.club_id = b.id
        JOIN clients c2 on pt.client_id = c2.id
        JOIN trainers t2 on t2.id = pt.trainer_id     
    ORDER BY started_at;

SELECT * FROM  personal_trainings_schedule ;
	
# хранимые процедуры / триггеры; 

/*контроль срока действия абонементов
в зависимости от типа абонемента( 6 или 12 месяцев), автоматически заполняется поле 
finished_at, если дата finished_at больше сегодняшней, поле is_active меняет значение 1 на 0
по умолчанию поле finished_at is NULL*/

DROP TABLE IF EXISTS log_subs; 
CREATE TABLE log_subs (
	created_at DATETIME NOT NULL,
	finished_at DATETIME NOT NULL,
	primary_key_id BIGINT UNSIGNED NOT NULL
	
) ENGINE = ARCHIVE;


DROP TRIGGER IF EXISTS log_subs2;
delimiter //
CREATE TRIGGER log_subs2 AFTER INSERT ON subscription
FOR EACH ROW
BEGIN
	INSERT INTO log_subs (created_at, finished_at, primary_key_id)
	VALUES (NOW(), DATE_ADD(NOW(), INTERVAL 1 YEAR), NEW.id);
	#VALUES (NOW(), DATE_ADD(NOW(), INTERVAL 6 MONTH), NEW.id);
END //
delimiter ;

# А лаконичнее всего, на мой взгяд,  учет абонементов возможно реализовать чрез транзацкию:

INSERT INTO subscription(id, client_id, subscription_type_id, started_at)
VALUES  ('1432', '1', '1',  NOW()),
		('1323', '2', '2', '2010-01-23 19:14:19'()),
		('1333', '3', '3', NOW()),
		('1343', '4', '4', NOW()),
		('1353', '5', '5', '2020-01-23 19:14:19');

START TRANSACTION;

UPDATE subscription 	
SET subscription.finished_at = DATE_ADD(started_at, INTERVAL 1 YEAR)
WHERE subscription.subscription_type_id BETWEEN 1 AND 3;

UPDATE subscription
SET subscription.finished_at = DATE_ADD(started_at, INTERVAL 6 month)
WHERE subscription.subscription_type_id BETWEEN 4 AND 5;

UPDATE subscription 
SET subscription.is_active = 0
WHERE subscription.finished_at < NOW();

UPDATE subscription 
SET subscription.is_active = 1
WHERE subscription.finished_at > NOW();

COMMIT;

#развитие и доработка бд:

 # по моему мнению, я неправильно сделал, что назначил групповым тренировкам и секциям поле client_id, должно быть отношение один ко многим
 # еще мне кажется, что для улучшения производительности нужно добаить какие то индексы или внешние ключи в таблицу branches (филиалы спортивных клубов), во избежания полного перебора
 
#структура таблицы могла бы быть улучшена,
#можно было бы обойтись без промежуточной таблицы log_subs, 
# accouting_table можно было бы получить с помощью триггера,
# переделана структура таблицы абонементов, убрана избыточность
