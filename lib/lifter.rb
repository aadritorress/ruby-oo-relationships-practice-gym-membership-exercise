class Lifter

  attr_reader :name, :lift_total
  @@all = []

  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    @@all << self 
  end

  def self.all
    @@all
  end 

  def all_memberships
    Membership.all.select{|membership| membership.lifter == self}
  end 

  def self.average_lift_total
    @@all.map {|lifter| lifter.lift_total}.sum / @@all.map{|lifter| lifter.lift_total}.count

    # Membership.all.map {|membership| membership.lifter.lift_total}.sum / Membership.all.map {|membership| membership.lifter.lift_total}.count
  end 

  def total_cost
    Membership.all.select {|membership| membership.lifter == self}.map{|membership| membership.cost}.sum  
  end 

  def self.sign_up(cost, gym, lifter)
    Membership.new(cost, gym, lifter)
  end 


end



