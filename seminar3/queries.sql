/* Show the number of lessons given per month during a specified year.
    This query is expected to be performed a few times per week. 
    It shall be possible to retrieve the total number of lessons per month (just one number per month) 
    and the specific number of individual lessons, group lessons and ensembles (three numbers per month). 
    It's not required that all four numbers (total plus one per lesson type) for a particular month are on the same row;
    you're allowed to have one row for each number as long as it's clear to which month each number belongs. However, 
    it's most likely easier to understand the result if you do place all numbers for a particular month on the same row, 
    and it's an interesting exercise, therefore you're encouraged to try. */

    SELECT EXTRACT(MONTH FROM music_lesson.date) AS Month, COUNT(*) AS number_of_lessons
    FROM music_lesson
    WHERE EXTRACT(YEAR FROM music_lesson.date) = "2022"
    GROUP BY EXTRACT(MONTH FROM music_lesson.date);

    SELECT EXTRACT(MONTH FROM music_lesson.date) AS Month, lesson_type, COUNT(*) AS number_of_lessons
    FROM music_lesson
    WHERE EXTRACT(YEAR FROM music_lesson.date) = '2022'
    GROUP BY EXTRACT(MONTH FROM music_lesson.date), lesson_type;

    -- retrieve the average number of lessons per month during 2022.
    SELECT COUNT(*) / 12 AS average_lessons
    FROM music_lesson
    WHERE EXTRACT(YEAR FROM music_lesson.date) = '2022';

    SELECT lesson_type, COUNT(*) / 12 AS average_lessons
    FROM music_lesson
    WHERE EXTRACT(YEAR FROM music_lesson.date) = '2022'
    GROUP BY lesson_type;

    /* Show how many students there are with no sibling, with one sibling, with two siblings, etc. 
    This query is expected to be performed a few times per week. 
    The database must contain students with no sibling, one sibling and two siblings, but doesn't have to contain students with more than two siblings. 
    Note that it's not allowed to solve this by just adding a column with sibling count (maybe called no_of_siblings or something similar) to the student table. 
    Such a solution would be almost impossible to maintain since it doesn't tell who's a sibling of who. 
    If a student quits, there wont be any way to update the sibling count of that student's siblings. */
    
    CREATE VIEW student_number_of_siblings AS
    SELECT number_of_siblings.total as total_siblings, count(1) as students_with_number_of_siblings 
    FROM (SELECT count(sibling.student_id) as total 
        FROM student LEFT JOIN sibling ON student.student_id = sibling.student_id  
        GROUP BY student.student_id) as number_of_siblings 
    GROUP BY total_siblings ORDER BY total_siblings ASC;

    /* List all instructors who has given more than a specific number of lessons during the current month. 
    Sum all lessons, independent of type, and sort the result by the number of given lessons. 
    This query will be used to find instructors risking to work too much, and will be executed daily. */

    SELECT * FROM 
        (SELECT COUNT(*) AS number_of_lessons, employment_id AS instructor FROM music_lesson
        WHERE TO_CHAR(date, 'YYYY-MM') = TO_CHAR(current_date, 'YYYY-MM')
        GROUP BY employment_id
        ORDER BY number_of_lessons DESC)
        AS instructor WHERE number_of_lessons > 2;
    
    SELECT * FROM 
        (SELECT COUNT(*) AS number_of_lessons, employment_id AS instructor, lesson_type FROM music_lesson
        WHERE TO_CHAR(date, 'YYYY-MM') = TO_CHAR(current_date, 'YYYY-MM')
        GROUP BY employment_id, lesson_type
        ORDER BY number_of_lessons DESC)
        AS instructor WHERE number_of_lessons > 4;
    
    CREATE MATERIALIZED VIEW number_of_lessons AS
        SELECT * FROM 
            (SELECT COUNT(*) AS number_of_lessons, employment_id AS instructor, lesson_type FROM music_lesson
            WHERE TO_CHAR(date, 'YYYY-MM') = TO_CHAR(current_date, 'YYYY-MM')
            GROUP BY employment_id, lesson_type
            ORDER BY number_of_lessons DESC)
            AS instructor WHERE number_of_lessons > 4;

    /* List all ensembles held during the next week, sorted by music genre and weekday. 
    For each ensemble tell whether it's full booked, has 1-2 seats left or has more seats left.
    Hint: you might want to use a CASE statement in your query to produce the desired output. */

    SELECT music_lesson.lesson_type AS type, music_lesson.date AS date_of_lesson, ensemble.genre AS genre,
       (CASE 
	        WHEN COUNT (student_ensemble.student_id) = (maximum_number_of_students) THEN 'Fully booked'
	        WHEN COUNT (student_ensemble.student_id) = (maximum_number_of_students - 1) THEN '1 seats left'
            WHEN COUNT (student_ensemble.student_id) = (maximum_number_of_students - 2) THEN '2 seats left'
            WHEN COUNT (student_ensemble.student_id) < (maximum_number_of_students - 2) THEN 'Many free seats'
        END)
    FROM music_lesson, ensemble, student_ensemble
    WHERE music_lesson.id = ensemble.lesson_id AND ensemble.lesson_id = student_ensemble.lesson_id AND date_trunc('week', current_date + interval '1 week') = date_trunc('week', date)
    GROUP BY type , date_of_lesson , genre, maximum_number_of_students;

    CREATE MATERIALIZED VIEW number_of_lessons AS
	SELECT music_lesson.lesson_type AS type, music_lesson.date AS date_of_lesson , ensemble.genre AS genre,
        (CASE 
	        WHEN COUNT (student_ensemble.student_id) = (maximum_number_of_students) THEN 'Fully booked'
	        WHEN COUNT (student_ensemble.student_id) = (maximum_number_of_students - 1) THEN '1 seats left'
            WHEN COUNT (student_ensemble.student_id) = (maximum_number_of_students - 2) THEN '2 seats left'
            WHEN COUNT (student_ensemble.student_id) < (maximum_number_of_students - 2) THEN 'Many free seats'
        END)
	FROM music_lesson, ensemble, student_ensemble
	WHERE music_lesson.id = ensemble.lesson_id AND ensemble.lesson_id = student_ensemble.lesson_id AND date_trunc('week', current_date + interval '1 week') = date_trunc('week', date)
	GROUP BY type , date_of_lesson , genre, maximum_number_of_students;




    