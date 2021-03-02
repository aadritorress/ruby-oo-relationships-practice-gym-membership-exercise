# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Adri", 50)
l2 = Lifter.new("Shane", 100)
l3 = Lifter.new("Calla", 20)
l4 = Lifter.new("Theo", 200)

g1 = Gym.new("strong people")
g2 = Gym.new("no pain no gain")
g3 = Gym.new("shane's club")

m1 = Membership.new(20, g1, l2)
m2 = Membership.new(50, g3, l3)
m3 = Membership.new(30, g2, l1)
m4 = Membership.new(30, g1, l4)

binding.pry

puts "Gains!"
