/* Which decades saw the most number of titles getting premiered?
 * List the number of titles in every decade. Like 2010s|2789741.
 *  
 * Details: Print all decades and the number of titles. Print the
 * relevant decade in a fancier format by constructing a string that
 * looks like this: 2010s. Sort the decades in decreasing order with
 * respect to the number of titles. Remember to exclude titles which
 * have not been premiered (i.e. where premiered is NULL)
 *  
 * 1960s: the period from 1960 to 1969
 */

SELECT CAST(premiered/10*10 AS NUM) || 's' AS decade, COUNT(*)
    FROM titles
    WHERE premiered NOT NULL
    GROUP BY decade
    ORDER BY decade DESC;