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

  it 'should not create user without confirmation password' do
    user = User.create(:login => 'login name', :password => 'password')
    user.save
    user.should_not be_valid
  end

  it 'should not create user without email' do
    user = User.create(:login => 'login name', :password => 'password', :password_confirmation => 'password')
    user.save
    user.should_not be_valid
  end

  it 'should create user with all requirements' do
    user = User.create(:login => 'login name', :email => 'ls@lucianosousa.net', :password => 'password', :password_confirmation => 'password')
    user.save
    user.should be_valid
  end
  
end
