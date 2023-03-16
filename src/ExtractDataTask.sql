-- Count of pilots whose age = 25, 26, 31
SELECT COUNT (DISTINCT pilot_info.age) FROM pilot_info
WHERE pilot_age NOT BETWEEN 27 AND 30;

-- The older pilot information (for SQL serv)
SELECT TOP 1 pilot_ID AS older_pilot, name, age, birthday, plane_that_can_fly FROM pilot_info
ORDER BY birthday DESC;

-- Pilots who can fly on planes with 85 seats and pilots whose name start with 'A' :DDD
SELECT pilot_info.name, plane_info.model, plane_info.seats
FROM pilot_info
INNER JOIN plane_info
ON pilot_info.plane_that_can_fly = plane_info.model
WHERE plane_info.seats = 85 OR pilot_info.name LIKE 'a%';