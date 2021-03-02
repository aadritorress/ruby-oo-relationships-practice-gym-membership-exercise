class Gym

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self 
  end


  def self.all
    @@all
  end 

  def all_memberships
    Membership.all.select {|membership| membership.gym == self}
  end

  def all_lifters
   Membership.all.select {|membership| membership.lifter if membership.gym == self}.map {|membership| membership.lifter}
  end 

  def all_names
   Membership.all.select {|membership| membership.lifter if membership.gym == self}.map {|membership| membership.lifter.name}
  end 

 
  def combined_lift_total
   all_lifters.map{|lifter| lifter.lift_total }.sum
  end 


end 

