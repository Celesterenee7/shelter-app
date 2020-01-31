FactoryBot.define do
  factory :item do
    name { "MyString" }
    description { "MyText" }
  end

  factory :user do
    name { "MyString" }
    email { "MyString" }
    password_digest { "MyString" }
  end

    factory(:animal) do
      name {'Meika'}
      creature {'Pomeranian'}
      gender {'Female'}
      born {'2010-6-13'}
      profile {'Meikas is the cutest dog in the world!'}
      fav_food {'Chicken'}
      # priority {1}
    end
  end