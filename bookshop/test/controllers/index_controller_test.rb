require 'test_helper'

class IndexControllerTest < ActionController::TestCase
def setup
    @base_title = "BookShop"
  end
  
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "#{@base_title} | Welcome"
  end

  test "should get contact" do
    get :contact
    assert_response :success
    assert_select "title", "#{@base_title} | Contact"
  end

  test "should get login" do
    get :login
    assert_response :success
    assert_select "title", "#{@base_title} | Login"
  end

end
