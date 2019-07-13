create table tennis_statistics( 
match_id varchar,
winner_first_serve_summary varchar, loser_first_serve_summary varchar, winner_second_serve_summary varchar,
loser_second_serve_summary varchar, winner_break_points_summary varchar, 
loser_break_points_summary varchar
);

create table tennis_scores( match_id varchar, winner_name varchar,
						   loser_name varchar,	match_score varchar
);

drop table tennis_scores;

select * from tennis_statistics;

select * from tennis_scores;

create view tennis_analysis as
select s.winner_name, s.loser_name, 
	t.winner_first_serve_summary, t.loser_first_serve_summary,
	t.winner_second_serve_summary,
t.loser_second_serve_summary, t.winner_break_points_summary, 
t.loser_break_points_summary, s.match_score from tennis_scores as s 
	join tennis_statistics as t on s.match_id = t.match_id
;