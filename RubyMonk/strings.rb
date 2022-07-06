
#search in a string
"[Luke:] I can’t believe it. [Yoda:] That is why you fail.".include?("Yoda")

#starts with
"Ruby is a beautiful language".start_with?("Ruby")

#ends
"I can't work with any other language but Ruby".end_with?("Ruby")

#index
"I am a Rubyist".index("R")

z = "Ruby" << "Monk"
puts z

"I should look into your problem when I get time".sub('I','We') #first occurrence
"I should look into your problem when I get time".gsub('I','We') #global scope
'RubyMonk'.gsub(/[aeiou]/,'1') #replaces all the vowels with the number 1
'RubyMonk Is Pretty Brilliant'.gsub(/[A-Z]/,'0') #replace all the characters in capital case

puts 'RubyMonk Is Pretty Brilliant'.match(/ ./, 9)

def find_frequency(sentence, word)
  arr = sentence.split()
  arr.each{|x| x.downcase!}
  return arr.count(word.downcase)
end

def find_frequency_shorter_solution(sentence, word)
  sentence.downcase.split.count(word.downcase)
end

puts find_frequency("Do or do not... there is no try", "do")

def sort_string(string)
  string.split(' ').sort{|x, y| x.length <=> y.length}.join(' ')
end

puts sort_string("Sort words in a sentence")

def palindrome?(sentence)
  s = sentence.downcase.gsub(' ','')
  return s.reverse == s
end

puts palindrome?("Never odd or even")