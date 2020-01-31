class Seed

  def self.begin
    seed = Seed.new
    seed.generate_animals
  end

  def generate_animals
    20.times do |i|
      animal = Animal.create!(
        name: Faker::GreekPhilosophers.name,
        creature: Faker::Creature::Animal.name,
        gender: Faker::Gender.binary_type,
        born: Faker::Date.birthday(min_age: 1, max_age: 15),
        profile: Faker::Lorem.paragraph,
        fav_food: Faker::Food.vegetables
      )
      puts "Animal #{i}: Name: #{animal.name}. Type: #{animal.creature}. Gender: #{animal.gender}. Birthday: #{animal.born}. Profile: #{animal.profile}. Favorite Food: #{animal.fav_food}."
    end
  end
end

Seed.begin
