/* 
 * List all types of titles along with the number of associated titles.
 *  
 * Details: Print type and number of associated titles. For example,
 * tvShort|4075. Sort by number of titles in ascending order.
 */ 

SELECT type, COUNT(*) AS count
    FROM titles
    GROUP BY type
    ORDER BY count ASC;
