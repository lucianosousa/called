require 'spec_helper'

describe UsersController do

  render_views
  
  it 'should view user' do
    @user = Factory(:user)
    get :show, :id => @user
    response.should be_success
  end

end
