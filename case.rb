movies = {
  StarWars: 4.8,
  Divergent: 4.7
}

puts "What would you like to do? "

choice = gets.chomp

case choice
when "add"
  puts "What movie would you like to add? "
  title = gets.chomp.to_sym
  if movies[title] == nil
    puts "What rating does the movie have? "
    rating = gets.chomp.to_i
    movies[title] = rating
  else
    puts "Can't add movie'"
  end
when "update"
  puts "What movie would you like to update? "
  title = gets.chomp.to_sym
  if movies[title] == nil
    puts "Can't update movie"
  else
    rating = gets.chomp.to_i
    movies[title] = rating
  end
when "display"
  movies.each {|k, v| puts "#{k}: #{v}" }
when "delete"
  puts "What movie would you like to delete? "
  title = gets.chomp.to_sym
  if movies[title] == nil
    puts "Can't delete movie"
  else
    movies.delete(title.to_sym)
  end
else
  puts "Error!"
end

puts "What's your favorite language?"
language = gets.chomp

case language
when "Ruby" then puts "Ruby is great for web apps!"
when "Python" then puts "Python is great for science."
when "JavaScript" then puts "JavaScript makes websites awesome."
when "HTML" then puts "HTML is what websites are made of!"
when "CSS" then puts "CSS makes websites pretty."
else puts "I don't know that language!"
end