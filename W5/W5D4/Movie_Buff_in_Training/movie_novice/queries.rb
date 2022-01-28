# == Schema Information
#
# Table name: actors
#
#  id          :integer      not null, primary key
#  name        :string
#
# Table name: movies
#
#  id          :integer      not null, primary key
#  title       :string
#  yr          :integer
#  score       :float
#  votes       :integer
#  director_id :integer
#
# Table name: castings
#  id          :integer      not null, primary key
#  movie_id    :integer      not null
#  actor_id    :integer      not null
#  ord         :integer


def find_angelina
  #find Angelina Jolie by name in the actors table
Actor.find_by(name: 'Angelina Jolie')
end

def top_titles
  # get movie titles from movies with scores greater than or equal to 9
  # hint: use 'select' and 'where'
Movie.find_by_sql(<<-SQL)
SELECT
  movies.id, movies.title
FROM
  movies
WHERE
  movies.score >= 9
SQL
end

def star_wars
  #display the id, title and year of each Star Wars movie in movies.
  # hint: use 'select' and 'where'
  Movie.find_by_sql(<<-SQL)
  SELECT
    movies.id, movies.title, movies.yr 
  FROM
    movies
  WHERE
    title LIKE 'Star Wars%'
  SQL
end


def below_average_years
  #display each year with movies scoring under 5,
  #with the count of movies scoring under 5 aliased as bad_movies,
  #in descending order
  # hint: use 'select', 'where', 'group', 'order'
  
end

def alphabetized_actors
  # display the first 10 actor names ordered from A-Z
  # hint: use 'order' and 'limit'
  # Note: Ubuntu users may find that special characters
  # are alphabetized differently than the specs.
  # This spec might fail for Ubuntu users. It's ok!
  Movie.find_by_sql(<<-SQL)
  SELECT
    actors.id, actors.name 
  FROM
    actors
  ORDER BY name ASC LIMIT 10
  SQL
end

def pulp_fiction_actors
  # practice using joins
  # display the id and name of all actors in the movie Pulp Fiction
  # hint: use 'select', 'joins', 'where'
  Movie.find_by_sql(<<-SQL)
  SELECT
    actors.id, actors.name 
  FROM
    actors
  JOIN
    castings
  ON
    actors.id = castings.actor_id
  JOIN
    movies
  ON
    castings.movie_id = movies.id
  WHERE
    title = 'Pulp Fiction'
  SQL
end

def uma_movies
  #practice using joins
  # display the id, title, and year of movies Uma Thurman has acted in
  # order them by ascending year
  # hint: use 'select', 'joins', 'where', and 'order'
  Movie.find_by_sql(<<-SQL)
  SELECT
    movies.id, movies.title, movies.yr 
  FROM
    movies
  JOIN
    castings
  ON
    movies.id = castings.movie_id
  JOIN
    actors
  ON
    castings.actor_id = actors.id
  WHERE
    name = 'Uma Thurman'
  ORDER BY yr ASC
  SQL
end
