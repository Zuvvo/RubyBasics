restaurant_menu ={
  "Ramen" => 3,
  "Dal Makhani" => 4,
  "Tea" => 2
}

restaurant_menu.map {|k,v| restaurant_menu[k] =  v * 1.1}
restaurant_menu.each {|k,v| puts "#{k}: $#{v}"}

chuck_norris = Hash[:punch, 99, :kick, 98, :stops_bullets_with_hands, true]
p chuck_norris

