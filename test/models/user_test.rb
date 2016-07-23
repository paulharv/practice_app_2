require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
  	@blank_user = User.new()
  	@valid_user = User.new(name:'Bob', age:20, email:'b@b.com', blob_id:1)
  end	
  
  test "not valid without required atts" do
  	assert_not @blank_user.valid?
  end

  test "not valid if name too long" do
  	@valid_user.name=('Bob' * 10)
  	assert_not @valid_user.valid?
  end

  test "not valid if too young" do
    @valid_user.age=2
    assert_not @valid_user.valid?
  end 


end
