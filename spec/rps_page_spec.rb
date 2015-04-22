require("rspec")
require("rps_page")

describe("String#rps_page") do
  it("returns true if rock is the object and scissors is the argument") do
    expect("rock".beats?("scissors")).to(eq(true))
  end
end
