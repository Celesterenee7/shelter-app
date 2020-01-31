class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::GreekPhilosophers.name,
        animal_type: Faker::Creature::Animal.name
      )
      puts "Animal #{i}: name is #{animal.name} and this animal is a #{animal.animal_type}."
    end
  end
end

Seed.begin
