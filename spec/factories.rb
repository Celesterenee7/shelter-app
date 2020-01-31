FactoryBot.define do
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