class MyThing
  protected
  attr_reader :name

  def initialize(name, value)
    @name = name
    @value = value

    puts "My name is #{name}"
  end
end

class YourThing < MyThing
  def say_hi
    puts "Your name is #{name}"
  end
end

my_thing = MyThing.new("Jeff", 5)
your_thing = YourThing.new("Gardner", 10)
your_thing.say_hi

def what_is_this(x:)
  puts "What is this: #{x} - #{x.class}"
end

# what_is_this 2
# what_is_this something: 2
# what_is_this( { something: 3 })
what_is_this(x: 5)
what_is_this x: "some shit"

some_hash = { a: 2, b: 3, 'c' => 4 }
puts "some_hash: #{some_hash}"
puts "some_hash['a']: #{some_hash['a']}"
puts "some_hash[:a]: #{some_hash[:a]}"
puts "some_hash['c']: #{some_hash['c']}"
puts "some_hash[:c]: #{some_hash[:c]}"

default_hash = Hash.new({a: 2, b: 3})
puts "default_hash: #{default_hash}"
puts "default_hash[:a]: #{default_hash[:a]}"
puts "default_hash['a']: #{default_hash['a']}"
# puts 'keys: ' + default_hash.keys.length.to_s

def add(a,b)
  a + b
end

class MyThing2
  # Sweet code that just hangs out in the class definition?
  something = add(3,5)
  puts "[MyThing2] something is: #{something}"

  def function_name
    puts "This is a function that can't really be called"
  end

  def self.hoopla p
    puts "Hoopla! #{p}"
  end

  hoopla 2
end

my_thing_2 = MyThing2.new
my_thing_2.function_name
MyThing2.hoopla 10
