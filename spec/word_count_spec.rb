require ("rspec")
require("word_count")

describe ("String#word_count") do
  it("returns number '1' for the word 'cat' in the sentence 'I have one cat only'") do
    expect(("I have one cat only").word_count ("cat")).to(eq(1))
  end

end
