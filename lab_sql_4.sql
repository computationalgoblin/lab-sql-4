-- 1. Get film ratings.
select rating as film_ratings
from film;

-- 2. Get release years.
select release_year
from film;

-- 3. Get all films with ARMAGEDDON in the title.
select title as armageddon_in_title
from film 
where title like "%ARMAGEDDON%";

-- 4.Get all films with APOLLO in the title
select title as apollo_in_title
from film 
where title like "%APOLLO%";

-- 5.Get all films which title ends with APOLLO.
select title as ends_with_apollo
from film 
where title like "%APOLLO";

-- 6.Get all films with word DATE in the title.
select title 
from film 
where title like "%DATE%";

-- 7.Get 10 films with the longest title.
select title as ten_longest_film_titles
from film 
order by length(title) desc
limit 10;

-- 8.Get 10 the longest films.
select title as ten_longest_films, length
from film
order by length desc
limit 10;

-- 9.How many films include Behind the Scenes content?
select title as behind_the_scenes_included
from film
where special_features like "%BEHIND THE SCENES%";

-- 10.List films ordered by release year and title in alphabetical order.
select title, release_year
from film
order by release_year asc ,title;
