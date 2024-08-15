SELECT DISTINCT p.name
FROM people AS p
JOIN stars AS s ON p.id = s.person_id
JOIN movies AS m ON s.movie_id = m.id
JOIN stars AS kevin_stars ON m.id = kevin_stars.movie_id
JOIN people AS kevin ON kevin_stars.person_id = kevin.id
WHERE kevin.name = 'Kevin Bacon' AND kevin.birth = '1958'
AND p.id <> kevin.id;