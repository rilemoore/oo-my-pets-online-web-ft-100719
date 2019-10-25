class Owner
  attr_reader :name, :species
  attr_accessor :dogs, :cats
  @@all = []
  
  def initialize(name)
    @name = name
    @species = "human"
    @cats = []
    @dogs = []
    @@all << self
  end
  
  def say_species
    "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@all.count
  end
  
  def self.reset_all
    @@all.clear
  end  
  
  def cats
    @cats

  end
  
  def dogs
    @dogs
  end
  
  def buy_cat(cat_name)
    
    new_cat = Cat.new(cat_name,self)
    @cats << new_cat 
    # Cat.all.each do |cat|
    #   if(cat.name == cat_name)
    #     cat.owner = self.owner
    #   end
    # end
    
  end
  
  def buy_dog(cat_name)
    
    new_dog = Dog.new(dog_name,self)
    @dogs << new_dog
    # Dog.all.each do |dog|
    #   if(dog.name == dog_name)
    #     dog.owner = self.owner
    #   end
    # end
    
  end
  
  
end






