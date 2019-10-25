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
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name,self)
  end
  
  def walk_dogs
    @dogs.each do |dog|
      dog.mood = "happy"
    end
  end
  
  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end
  
  
end






