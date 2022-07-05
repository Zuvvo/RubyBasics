movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}

good_movies = movie_ratings.select {|k, v| v > 3}
good_movies.each { |k, v| puts k }

alphabet = ["a", "b", "c"]
alphabet << "d"

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
doubled_fibs = fibs.collect {|num| num * 2}
doubled_fibs.each{|el| puts el}