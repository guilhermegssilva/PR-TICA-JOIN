--Questão 1:
SELECT users.id AS id, users.name AS name, cities.name AS city
FROM users
JOIN cities ON users."cityId" = cities.id
WHERE cities.name = 'Rio de Janeiro';

--Questão 2:
SELECT t.id AS id, u1.name AS writer, u2.name AS recipient, message
FROM testimonials t
JOIN users u1 ON t."writerId" = u1.id
JOIN users u2 ON t."recipientId" = u2.id;

--Questão 3:
SELECT u.id AS id, u.name AS name, c.name AS course, s.name AS school, e."endDate" as "endDate"
FROM educations e
JOIN users u ON e."userId" = u.id
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE u.id = 30;

--Questão 4:
SELECT u.id AS id, u.name AS name, r.name AS role, c.name AS company, e."startDate" AS "startDate"
FROM experiences e
JOIN companies c ON e."companyId" = c.id
JOIN roles r ON e."roleId" = r.id
JOIN users u ON e."userId" = u.id
WHERE u.id = 50
AND e."endDate" IS NULL;