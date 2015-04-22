require("capybara/rspec")
require("./app")
Capybara.app = Sinatra::Application

describe("The path the to winner's page", {:type => :feature}) do
  it("accepts two written inputs from the users (rock, paper, or scissors) and redirects them to a page declaring the winner") do
    visit("/")
    fill_in("player1input", :with => "paper")
    fill_in("player2input", :with => "rock")
    click_button("submit")
    expect(page).to(have_content("Player one's paper beats player two's rock"))
  end
end
