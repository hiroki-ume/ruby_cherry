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

def bye_burger(menu, drink, potate)
  if drink

  end
  if potate

  end
end

bye_burger("cheese", true, true)
