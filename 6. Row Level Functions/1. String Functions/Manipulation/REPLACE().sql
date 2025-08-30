/*
	REPLACE() - Replace a specific character with a new character
*/

SELECT 
	'123-456-7890' AS phone_no,
	REPLACE('123-456-7890', '-', '/') AS replace_no

SELECT 
	'report.txt' AS old_filename,
	REPLACE('report.txt', '.txt', '.csv') AS new_filename