/* Show the number of lessons given per month during a specified year.
    This query is expected to be performed a few times per week. 
    It shall be possible to retrieve the total number of lessons per month (just one number per month) 
    and the specific number of individual lessons, group lessons and ensembles (three numbers per month). 
    It's not required that all four numbers (total plus one per lesson type) for a particular month are on the same row;
    you're allowed to have one row for each number as long as it's clear to which month each number belongs. However, 
    it's most likely easier to understand the result if you do place all numbers for a particular month on the same row, 
    and it's an interesting exercise, therefore you're encouraged to try. */

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

    