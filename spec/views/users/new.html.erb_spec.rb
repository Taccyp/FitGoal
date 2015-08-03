require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      :username => "MyString",
      :password => "MyString",
      :height => 1,
      :weight => 1,
      :sex => "MyString",
      :activity_level => 1
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_username[name=?]", "user[username]"

      assert_select "input#user_password[name=?]", "user[password]"

      assert_select "input#user_height[name=?]", "user[height]"

      assert_select "input#user_weight[name=?]", "user[weight]"

      assert_select "input#user_sex[name=?]", "user[sex]"

      assert_select "input#user_activity_level[name=?]", "user[activity_level]"
    end
  end
end
