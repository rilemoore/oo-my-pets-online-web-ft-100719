class Owner
  attr_reader :name, :species
  
  @@all = []
  
  def initialize(species = "human", name)
    @name = name
    @species = species
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
    count = 0
    @@all.each do
      count += 1
    end
    count
  end
  
  def self.reset_all
    @@all.clear
  end  
  
  def cats
    @cats
    # cats_owned = []
    # Cat.all.each do |cat|
    #   if(cat.owner.name == self.name)
    #     cats_owned << cat
    #     @cats << cat
    #   end
    # end
    # cats_owned
  end
  
  def dogs
    
    @dogs
    # dogs_owned = []
    # Dog.all.each do |dog|
    #   if(dog.owner.name == self.name)
    #     dogs_owned << dog
    #   end
    # end
    
    # dogs_owned.each do |dog|
    #   puts "#{dog.owner.name}, #{dog.name}"
    # end
    dogs_owned
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






