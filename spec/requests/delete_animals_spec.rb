require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :creature => 'test_creature', :gender => 'test_gender' }

    delete '/animals/.id', params: { :name => 'test_name', :creature => 'test_creature', :gender => 'test_gender' }
  end
end