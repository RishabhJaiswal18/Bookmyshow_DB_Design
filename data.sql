-- Screen
INSERT INTO Screen (theatre_id, screen_name) VALUES
(1, 'Audi 1'),
(1, 'Audi 2');

-- Movies
INSERT INTO Movie (title, language, duration, genre) VALUES
('Dasara', 'Telugu', 150, 'Action'),
('Kisi Ka Bhai Kisi Ki Jaan', 'Hindi', 140, 'Drama'),
('Tu Jhoothi Main Makkaar', 'Hindi', 130, 'Romance');

-- Shows
INSERT INTO Shows (movie_id, screen_id, show_date, start_time, end_time) VALUES
(1, 1, '2026-05-19', '12:15:00', '02:45:00'),
(2, 1, '2026-05-19', '04:10:00', '06:30:00'),
(2, 2, '2026-05-19', '07:20:00', '09:40:00'),
(3, 2, '2026-05-19', '10:30:00', '12:40:00');