/* 
 * List the longest title of each type along with the runtime minutes.
 *  
 * Details: Find the titles which are the longest by runtime minutes. 
 * There might be cases where there is a tie for the longest titles - 
 * in that case return all of them. Display the types, primary titles 
 * and runtime minutes, and order it according to type (ascending) and 
 * use primary titles (ascending) as tie-breaker.
 */ 

SELECT type, primary_title, MAX(runtime_minutes) AS runtime_minutes
    FROM titles
    ORDER BY type ASC, primary_title ASC;