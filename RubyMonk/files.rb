#working only in rubymonk environment


File.open("disguise", "r+") do |f|
  puts f.read
  f.rewind
  f.truncate(0)
  f.write("Bar")
end

File.open("disguise", "w") do |f|
  f.write "Bar"
end