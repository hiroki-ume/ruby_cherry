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
