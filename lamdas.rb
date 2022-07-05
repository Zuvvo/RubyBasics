strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda {|x| x.to_sym}
symbols = strings.collect(&symbolize)
print symbols


my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]
symbol_filter = lambda { |x| x.is_a? Symbol}
symbols = my_array.select(&symbol_filter)

puts symbols