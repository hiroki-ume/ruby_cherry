text = <<TEXT
I love Ruby.
Python is a great language.
Java and Javascript are different.
TEXT

puts text.scan(/[A-Z][A-Za-z]+/)

puts "--------------------------------"

text2 = <<TEXT
私の郵便番号は1234567です。
僕の住所は堺市南区7654321だよ。
telは00-0000-0000
TEXT

puts text2.gsub(/(\d{3})(\d{4})/,'\1-\2')
puts text2.scan /\d{2}-\d{4}-\d{4}/

puts "--------------------------------"

html = <<TEXT
<select name="game_console">
<option value="none"></option>
<option value="wii_u" selected>Wii U</option>
<option value="ps4">プレステ4</option>
<option value="gb">ゲームボーイ</option>
</select>
TEXT

replaced = html.gsub(/<option value="(\w+)"(?: selected)?>(.*)<\/option>/, '\1,\2')

puts replaced

puts "--------------------------------"

if '123-456' =~ /\d{3}-\d{4}/
  puts "マッチしました"
else
  puts "マッチしませんでした"
end

puts "--------------------------------"

text = "私の誕生日は1995年12月19日です"
if m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
else
  puts "マッチしませんでした"
end

puts "--------------------------------"

birthday = "1995年12月19日　1996年3月16日".scan(/(?:\d+年)(?:\d+月)(?:\d+日)/)
puts birthday[0]

puts "--------------------------------"

text = "郵便番号は111-1111です 321-3333 543-5687"
postcode = text.gsub("-", ":")
puts postcode

puts "--------------------------------"

text = "0000/00/00"
case text
when /^\d{3}-\d{4}$/
  puts "郵便番号です"
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts "日付です"
when /^\d+-\d+-\d+$/
  puts "電話番号です"
end

puts "--------------------------------"

puts "hello\nbye" =~ /hello.bye/
puts "hello\nbye" =~ /hello.bye/m

puts "--------------------------------"

regexp = /
\d{3}
-
\d{4}
/x

puts "000-0000" =~ regexp

puts "--------------------------------"

text = "私の誕生日は1995年12月19日です"

text =~ /(\d+)年(\d+)月(\d+)日/

puts Regexp.last_match

puts $1

puts "--------------------------------"

puts /\d{3}-\d{4}/.match?"000-000"
