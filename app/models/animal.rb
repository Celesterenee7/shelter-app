class Animal < ApplicationRecord

  validates :name, presence: true
  validates :creature, presence: true
  validates :gender, presence: true
  validates :born, presence: true
  validates :profile, presence: true
  validates :fav_food, presence: true

  scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%") }
  scope :random_creature, -> { Animal.find("RAND()").limit(1) }
  scope :find_gender, -> (gender_parameter) { where(gender: "Female") }
  scope :fav_food, -> (fav_food_parameter) { where("fav_food like?", "%#{fav_food_parameter}%") }
end