text = "RegExr was created by gskinner.com, and is proudly hosted by Media Temple.

Edit the Expression & Text to see matches. Roll over matches or the expression for details. PCRE & JavaScript flavors of RegEx are supported. Validate your expression with Tests mode.

The side bar includes a Cheatsheet, full Reference, and Help. You can also Save & Share with the Community, and view patterns you create or favorite in My Patterns.

Explore results with the Tools below. Replace & List output custom results. Details lists capture groups. Explain describes your expression in plain English."

puts (text =~ /easdasd/).nil?

log_text = "[WARNING]:   \tTimezone not set  \r\n"


#puts log_text.scan(/[^:]+/)[1].strip
#puts log_text.scan(/[^\]]+/)[0].gsub('[','').downcase

pattern = /[a-z]/i
pattern2 = /e/
pattern3 = /ea?/ #optional a
pattern4 = /ea*/ #optional and match as many as possible in a row

any_char_before = /[a-zA-Z]at/

or_pattern = /(t|T)\b/ #not working, use []
test_pattern = "(?(1)foo|bar)"

#puts text.scan(/\w+[t*]/) #splitting words

#puts text.scan(/[t|T]he/)

white_space_pattern = /\s/
anything_but_white_space = /\S/
between_x_characters = /\w{2,4}/


text.gsub(' ', '')
text.split(/output+/).length
text.match?(/output/)
text.scan(/.re/)  #any char + re
text.scan(/\w/).join #matching all word characters and joining them

text.scan(between_x_characters)

text.scan(/\w+/).select { |x| x.length.between?(2,4) }

text.scan(/[a-zA-Z]cl/)

x = "3923910394.123013"
whole_numbers = x.to_i.to_s
rest = x.to_f % x.to_i
puts whole_numbers.reverse.scan(/\d{3}|\d+/).join(' ').reverse + rest.to_s[1,rest.to_s.length - 1]