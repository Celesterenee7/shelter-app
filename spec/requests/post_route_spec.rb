# require 'rails_helper'

# describe "post a animal route", :type => :request do

#   before do
#     post '/animals', params: { :name => 'test_name', :creature => 'test_creature' }
#   end

#   it 'returns the animal name' do
#     expect(JSON.parse(response.body)['name']).to eq('test_name')
#   end

#   it 'returns the animal creature' do
#     expect(JSON.parse(response.body)['creature']).to eq('test_creature')
#   end

#   it 'returns a created status' do
#     expect(response).to have_http_status(:created)
#   end
# end