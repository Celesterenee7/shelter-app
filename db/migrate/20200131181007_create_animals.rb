class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.column(:name, :string)
      t.column(:creature, :string)
      t.column(:gender, :string)
      t.column(:born, :date)
      t.column(:profile, :string)
      t.column(:fav_food, :string)

      t.timestamps()
    end
  end
end
