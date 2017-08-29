--
-- DROP TABLE todos;
--
-- CREATE TABLE IF NOT EXISTS todos (
--   id SERIAL PRIMARY KEY,
--   title VARCHAR(255) NOT NULL,
--   details TEXT NULL ,
--   priority INTEGER NOT NULL DEFAULT 1,
--   created_at  TIMESTAMP NOT NULL,
--   completed_at TIMESTAMP  NULL
-- );
--
-- INSERT INTO todos (title, details, priority, created_at, completed_at)
-- VALUES
-- ('Do the Dishes', 'Clear dishes from sink', 2, NOW(), NOW()),
-- ('Read a Book', 'Educate YO SELF', 3, NOW(), NULL),
-- ('Go to Class', 'From 9am - 5pm', 1, NOW(), NULL),
-- ('Finish Homework', 'readings from class', 2, NOW(), NULL),
-- ('go on run', 'need to do 3 miles', 3, NOW(), NULL),
-- ('go to gym', 'Leg Day', 4, NOW(), NULL),
-- ('Get Groceries', 'Apples, Milk, Eggs', 1, NOW(), NOW()),
-- ('Clean House', 'Empty trash, mop floors', 1, NOW(), NULL),
-- ('Walk the Dog', '2 times around the block', 2, NOW(), NOW()),
-- ('Go to concert', 'Blaze it', 2, NOW(), NULL),
-- ('Buy Plane Ticket', 'To New York', 4, NOW(), NULL);
-- ('Clean Room', 'pick up clothes from floor, vaccum', 3, NOW(), NULL),
-- ('Mow the lawn', 'Also trim Hedges, water flowers', 1, NOW(), NULL),
-- ('Wash the Car', 'Vaccum interior, scrub tires', 3, NOW(), NOW()),
-- ('Go to Class', 'From 9am - 5pm', 1, NOW(), NULL);




SELECT * FROM todos
WHERE priority = 3 AND completed_at IS NULL;


SELECT count(id), priority
FROM todos
WHERE completed_at IS NULL
GROUP BY priority;


SELECT count(priority), title
FROM todos
WHERE created_at < '2017-08-30'
AND created_at > '2017-07-29'
GROUP BY title
LIMIT 1;


-- SELECT count(id), priority
-- FROM todos
-- WHERE DATEPART(MONTH, DATEADD(MONTH, -1, [Date]))
-- WHERE DATEADD(month, -1, @startOCurrentfMonth);
-- WHERE DATEPART(m, date_created) = DATEPART(m, DATEADD(m, -1, getdate()));
-- WHERE created_at = (NOW() - INTERVAL 1 MONTH);

SELECT * FROM todos;

SELECT MIN(priority), title
FROM todos
GROUP BY priority, title
ORDER BY priority
LIMIT 1;




--
-- SELECT * FROM todos
-- WHERE created_at (NOW() - INTERVAL 1 MONTH);




-- SELECT * FROM todos
-- WHERE
-- ORDER BY priority DESC;
