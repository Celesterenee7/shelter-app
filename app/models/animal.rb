class Animal < ApplicationRecord

  validates :name, presence: true
  validates :creature, presence: true
  validates :gender, presence: true
  validates :born, presence: true
  validates :profile, presence: true
  validates :fav_food, presence: true

  scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%") }
  scope :find_creature, -> (creature) { where("creature like?", "%#{creature_parameter}%")}
  # scope :random_dog, -> { where(random_dog: "Cat")}
end