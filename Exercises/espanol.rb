words = %w(cero uno dos tres cuatro cinco seis siete ocho nueve diez once doce trece catorce quince dieciséis diecisiete dieciocho diecinueve veinte)

numbers_mode = false

loop do
  rnd = words.sample
  puts numbers_mode ? words.index(rnd) : rnd
  correct = false
  until correct
    correct = numbers_mode ? words.index(rnd) == words.index(gets.chomp) : rnd == words[gets.chomp.to_i]
    puts correct ? "Correct answer" : "Try again"
  end
end