SELECT movies.title
FROM people AS cooper
JOIN stars AS cooper_stars ON cooper.id = cooper_stars.person_id
JOIN movies ON cooper_stars.movie_id = movies.id
WHERE cooper.name = 'Bradley Cooper'
AND movies.id IN (
    SELECT movies.id
    FROM people AS lawrence
    JOIN stars AS lawrence_stars ON lawrence.id = lawrence_stars.person_id
    JOIN movies ON lawrence_stars.movie_id = movies.id
    WHERE lawrence.name = 'Jennifer Lawrence'
)
