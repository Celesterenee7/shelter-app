class Seed

    def self.begin
      seed = Seed.new
      seed.generate_animals
    end
  
    def generate_animals
      20.times do |i|
        animal = animal.create!(
          name: Faker::GreekPhilosophers.name,
          animal_type: Faker::Creature::Animal.name
        )
        puts "animal #{i}: Animal name is #{animal.name} and animal type is #{animal.animal_type}."
      end
    end
  end
  
  Seed.begin
