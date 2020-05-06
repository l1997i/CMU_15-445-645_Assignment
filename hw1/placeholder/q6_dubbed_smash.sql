/*
 * List the top 10 dubbed titles with the number of dubs.
 *  
 * Details: Count the number of titles in akas for each title in the
 * titles table, and list only the top ten. Print the primary title
 * and the number of corresponding dubbed movies.
 */ 

WITH dubbed AS (
    SELECT title_id, COUNT(*) AS dubbed_count
    FROM akas
    GROUP BY title_id
    ORDER BY dubbed_count DESC, title_id 
    LIMIT 10
)
SELECT titles.primary_title, dubbed.dubbed_count
FROM dubbed
JOIN titles
ON titles.title_id == dubbed.title_id
ORDER BY dubbed.dubbed_count DESC;
