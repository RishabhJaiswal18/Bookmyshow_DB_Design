SELECT 
    m.title AS movie_name,
    m.language,
    s.show_date,
    s.start_time,
    s.end_time,
    sc.screen_name,
    t.name AS theatre_name
FROM
    Shows s
        JOIN
    Movie m ON s.movie_id = m.movie_id
        JOIN
    Screen sc ON s.screen_id = sc.screen_id
        JOIN
    Theatre t ON sc.theatre_id = t.theatre_id
WHERE
    s.show_date = '2026-05-19'
        AND t.theatre_id = 1
ORDER BY s.start_time;