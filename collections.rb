friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { "Homer" => "dad",
           "Marge" => "mom",
           "Lisa" => "sister",
           "Maggie" => "sister",
           "Abe" => "grandpa",
           "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }

# histogram
text = gets.chomp
words = text.split(' ')

frequencies = Hash.new(0)

words.each{|word| frequencies[word] += 1}

frequencies = frequencies.sort_by { |k,v| v }

frequencies.reverse!

frequencies.each do |k,v|
  puts k + " " + v.to_s
end