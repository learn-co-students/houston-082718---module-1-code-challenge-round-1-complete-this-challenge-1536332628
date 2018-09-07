



class Customer
  @@all = []
  attr_accessor :first_name, :last_name

  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name  = last_name
    @@all << self
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.all
    @@all
  end
      
  def self.all_names
    array = []
    self.all.collect do |names|
      array << names.first_name
    end
    nuarray = self.all.collect do|names|
      array << names.last_name
    end
    array
  end


  def self.find_all_by_first_name(name)
    array = []
    self.all.collect do |names|
      if names.first_name == name
        array << names.first_name
      end
    end
    array
  end

end
 