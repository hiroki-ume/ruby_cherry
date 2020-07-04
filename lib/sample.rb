sum = 0
(1..4).each {|n| sum += n}
puts sum

numbers = []
(1..10).step(2){ |n| numbers << n }
puts numbers

puts "--------------------------------"
def greeting(*names)
  puts "#{names.join('と')}さん、こんにちは"
end

greeting("hiroki")
greeting("jiro", "kota")
greeting("kota")

a = [1, 2, 3]
b = [0, a, 4]
puts b

puts "--------------------------------"
fruits = %W(apple orange melon)
fruits.each.with_index(1) do |fruit, i|
 puts "#{i}:#{fruit}"
end

map = fruits.map.with_index{ |fruits, i|
  "#{i}:#{fruits}"
}
p map

delete = fruits.delete_if.with_index { |fruit, i|
  fruit.include?('a') || i.odd?
}

puts delete

puts "--------------------------------"
dimensions = [
  [10, 20], [30, 40], [50, 60]
]

areas = []
dimensions.each_with_index do |dimension, i|
  length = dimension[0]
  width = dimension[1]
  puts "#{i}:length#{length}_width:#{width}"
end
puts areas

# 上と同義
areas2 = []
dimensions.each_with_index { |(length, width), i|
  puts "#{i}:length#{length}_width:#{width}"
}
puts areas2

puts "----------------------"
File.open("./sample2.txt", "w") do |file|
  file.puts("1行目のテキストです")
  file.puts("2行目のテキストです")
  file.puts("3行目のテキストです")
end
puts "Fileメソッドなので文字列は出力されない。"

puts "--------------------------------"

names = %W(taro hanako jiro)
san_names = names.map{ |name| "#{name}さん"}.join('と')
puts san_names

puts "--------------------------------"

sum = 0
5.times { |n| sum += n}
puts sum

a = []
1.step(10, 2) { |n| a << n}
puts a

a = []
a << 1 while a.size < 5
puts a

puts "--------------------------------"

numbers = [1, 2, 3, 4]
sum = 0

numbers.each do |n|
  sum_value = n.even?? n * 10 : n
  sum += sum_value
end
puts sum

puts "--------------------------------"

numbers = [1, 2, 3, 4, 5]
loop do
  n = numbers.sample #sampleメソッドでランダムに要素を取得
  puts n
  break if n == 5
end

puts "--------------------------------"

numbers = [1, 2, 3, 4, 5].shuffle
i = 0
h = while i < numbers.length
  n = numbers[i]
  puts n
  break 123
  i += 1
end
puts h

puts "--------------------------------"
# break
fruits = %W(apple melon orange)
numbers = [1, 2, 3]
fruits.each do |fruit|
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    break if n == 3
  end
end

puts "--------------------------------"
# catch throw
fruits = %W(apple melon orange)
numbers = [1, 2, 3]
h = catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{n}, #{fruit}"
      if fruit == "orange" && n == 3
        throw :done, 123
      end
    end
  end
end
puts h

puts "--------------------------------"
# next
numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  next if n.even?
  puts n
end

puts "--------------------------------"

foods = %W(ピーマン トマト セロリ)
count = 0
foods.each do |food|
  print "#{food}は好きですか？=>"
  answer = %W(はい いいえ).sample
  puts answer
  count += 1
  redo if answer != "はい" && count < 2
  count = 0
end
