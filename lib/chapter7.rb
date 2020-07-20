class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def self.create_users(names)
    names.map do |name|
      User.new(name)
    end
  end

  def hello
    "Hello, I am #{@name}."
  end

  # privateメソッド
  private

  def hello_private
    puts "hello"
  end
end

names = ["alice", "bob", "carol"]
users = User.create_users(names)

users.each do |user|
  # puts "氏名：#{user.name}、年齢：#{user.age}"
  puts user.hello
end

puts "---------------------------"
class Product
  DEFAULT_PRICE = 0

  attr_reader :price, :name

  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new("free movie")
puts product.price

puts "---------------------------"

class Foo
  puts "クラス公文の直下のself:#{self}"

  def self.bar
    puts "クラスメソッド内のself:#{self}"
  end

  def baz
    puts "インスタンスメソッド内のself:#{self}"
  end
end

puts Foo.bar

foo = Foo.new
puts foo.baz

puts "---------------------------"

class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end

  def self.format_price(price)
    "#{price}円"
  end

  def to_s
    puts "name:#{name}, price:#{price}"
  end
end

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    super(name, price)
    @running_time = running_time
  end

  def to_s
    "#{super}, running_time: #{running_time}"
  end
end

product = Product.new("a great movie", 1000)
product.to_s
dvd = DVD.new("a great movie", 100, 120)
dvd.to_s

puts "---------------------------"
