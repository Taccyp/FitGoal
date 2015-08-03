require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :username => "Username",
      :password => "Password",
      :height => 1,
      :weight => 2,
      :sex => "Sex",
      :activity_level => 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Password/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/3/)
  end
end
