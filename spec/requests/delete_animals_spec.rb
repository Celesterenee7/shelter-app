require 'rails_helper'

describe "delete animal route", :type => :request do
  animal_profile = 0;

  before do
    post '/animals', params: { :name => 'Meika', :creature => 'dog', :gender => 'female', :born => '2010-06-13', :profile => 'A very sweet dog', :fav_food => 'carrots' }
    animal_profile = JSON.parse(response.body).fetch("id")
  end

  it 'should delete an animal and its associated profile' do
    delete "/animals/#{animal_profile}"
    get '/animals'
    expect(JSON.parse(response.body).size).to eq(0)
  end
end