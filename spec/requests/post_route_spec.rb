require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'Meika', :creature => 'dog', :gender => 'female', :born => '2010-06-13', :profile => 'A very sweet dog', :fav_food => 'carrots' }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('Meika')
  end

  it 'returns the animal creature' do
    expect(JSON.parse(response.body)['creature']).to eq('dog')
  end

  it 'returns the animal gender' do
    expect(JSON.parse(response.body)['gender']).to eq('female')
  end

  it 'returns the animal birthdate' do
    expect(JSON.parse(response.body)['born']).to eq('2010-06-13')
  end
  
  it 'returns the animal profile' do
    expect(JSON.parse(response.body)['profile']).to eq('A very sweet dog')
  end

  it 'returns the animals favorite food' do
    expect(JSON.parse(response.body)['fav_food']).to eq('carrots')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end