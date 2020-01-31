require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :creature => 'test_creature' }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the animal creature' do
    expect(JSON.parse(response.body)['creature']).to eq('test_creature')
  end

  it 'returns the animal gender' do
    expect(JSON.parse(response.body)['gender']).to eq('test_gender')
  end

  it 'returns the animal birthdate' do
    expect(JSON.parse(response.body)['born']).to eq('test_born')
  end
  
  it 'returns the animal profile' do
    expect(JSON.parse(response.body)['profile']).to eq('test_profile')
  end

  it 'returns the animals favorite food' do
    expect(JSON.parse(response.body)['fav_food']).to eq('test_fav_food')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end
end