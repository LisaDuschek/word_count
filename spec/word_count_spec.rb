require ("rspec")
require("word_count")

describe ("String#word_count") do
  it("takes user input of string and single word and returns how often single word is contained in string") do
    expect(("Only two cats are better than one cat").word_count ("cat")).to(eq(2))
  end

end
