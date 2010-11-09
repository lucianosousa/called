require 'spec_helper'

describe User do
  it 'should not create user without login name' do
    user = User.create(:password => 'password')
    user.save
    user.should_not be_valid
  end

  it 'should not create user without password' do
    user = User.create(:login => 'login name')
    user.save
    user.should_not be_valid
  end


end
