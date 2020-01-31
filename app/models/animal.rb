class Animal < ApplicationRecord

  validates :name, presence: true
  validates :creature, presence: true
  validates :gender, presence: true
  validates :born, presence: true
  validates :profile, presence: true
  validates :fav_food, presence: true

  scope :search, -> (name_parameter) { where("name like ?", "%#{name_parameter}%") }
end