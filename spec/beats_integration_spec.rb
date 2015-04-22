require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application

describe("The path the to winner's page", {:type => :feature}) do
  it("accepts two written inputs from the users (rock, paper, or scissors) and redirects them to a page declaring the winner") do
    visit("/")
    fill_in("one_input", :with => "paper")
    fill_in("two_input", :with => "rock")
    click_button("submit")
    expect(page).to(have_content("player one"))
  end
end
