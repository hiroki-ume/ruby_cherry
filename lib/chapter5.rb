# ハッシュ
currencies = {"japan" => "yen", "us" => "doller", "india" => "rupee"}
currencies["italy"] = "euro"
currencies.delete("italy")
puts currencies["italy"]

puts "--------------------------------"
# ハッシュを使った繰り返し
currencies.each do |keyvalue|
  puts "#{keyvalue[0]}---- #{keyvalue[1]}"
end

puts "--------------------------------"
# シンボルを使ったハッシュ
currencies = {japan: "yen", us: "doller", india: "rupee"}
puts currencies

currencies = {japan: :yen, us: :doller, india: :rupee}
puts currencies

puts "--------------------------------"

def bye_burger(menu, drink: true, potate: true, **others)
  if drink
    puts others
  end
  if potate

  end
end

bye_burger("cheese", drink: true, potate: true, salad: true)

puts "--------------------------------"
currencies.to_a
puts currencies
