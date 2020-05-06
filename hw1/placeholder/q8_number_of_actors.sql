/*
 * List the number of actors / actresses who have appeared in any
 * title with Mark Hamill (born in 1951).
 *  
 * Details: Print only the total number of actors and actresses. 
 * The answer should include Mark Hamill himself.
 */ 

WITH
    MH(title_id) AS (
        SELECT DISTINCT(crew.title_id)
        FROM people
        JOIN crew
        ON
            crew.person_id == people.person_id
            AND people.name == 'Mark Hamill'
            AND people.born == 1951
    )

SELECT COUNT(DISTINCT(crew.person_id)) AS count
FROM crew
WHERE
    (category == 'actor' OR category == 'actress')
    AND crew.title_id IN MH;
