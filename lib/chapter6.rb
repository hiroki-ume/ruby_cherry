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
