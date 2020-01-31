require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :creature => 'test_creature', :gender => 'test_gender', :born => 'test_born', :profile => 'test_profile', :fav_food => 'test_fav_food' }

    delete '/animals/.id', params: { :name => 'test_name', :creature => 'test_creature', :gender => 'test_gender', :born => 'test_born', :profile => 'test_profile', :fav_food => 'test_fav_food' }
  end
end