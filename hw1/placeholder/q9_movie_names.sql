/*
 * List the movies in alphabetical order which cast both Mark 
 * Hamill (born in 1951) and George Lucas (born in 1944).
 *  
 * Details: Print only the names of the movies in alphabetical order.
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

SELECT titles.primary_title
FROM people
JOIN crew
ON 
    crew.person_id == people.person_id
    AND people.name == 'George Lucas'
    AND people.born == 1944
    AND crew.title_id IN MH
JOIN titles
ON
    crew.title_id == titles.title_id
    AND titles.type == 'movie'
    ORDER BY primary_title ASC