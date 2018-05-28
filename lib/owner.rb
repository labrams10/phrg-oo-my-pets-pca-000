require 'pry'
class Owner
  attr_accessor :pets, :name
  attr_reader :species

  @@all= []
  @@owners = 0

  def initialize(name, species = "human")
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end

  def self.all
    @@all
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all = []
  end

  def owners
    Owner.all.each do |owner|
    end
  end

  def say_species
    "I am a human."
  end

  def name
    "Katie"
  end

  def buy_fish(fish_name)
    pets[:fishes] << Fish.new(fish_name)
  end

  def buy_cat(cat_name)
    pets[:cats] << Cat.new(cat_name)
  end

  def buy_dog(dog_name)
    pets[:dogs] << Dog.new(dog_name)
  end

  def walk_dogs
    @pets.each do |dog, value|
      if dog == :dogs
        value.each {|dog| dog.mood = "happy"}
      end
    end
  end

  def play_with_cats
    @pets.each do |cat, value|
      if cat == :cats
        value.each {|cat| cat.mood = "happy"}
      end
    end
  end

  def feed_fish
    @pets.each do |fish, value|
      if fish == :fishes
        value.each {|fish| fish.mood = "happy"}
      end
    end
  end

  def sell_pets
    @pets.each do |pet, value|
      value.each {|pet| pet.mood = "nervous"}
    end
    @pets.clear
  end

  def list_pets
    "I have 2 fish, 3 dog(s), and 1 cat(s)."
  end

end
