require ("rspec")
require("word_count")

describe ("String#word_count") do
  it("returns number '1' for the word 'cat' in the sentence 'I have one cat only'") do
    expect(("I have one cat only").word_count ("cat")).to(eq(1))
  end

  it("returns number '2' for the word 'cat' in the sentence 'I have one cat only,but I want another cat badly'") do
    expect(("I have one cat only,but I want another cat badly").word_count ("cat")).to(eq(2))
  end

  it("returns number '1' for the word 'awesome' in the sentence 'i wish every exercise was this awesome'") do
    expect(("i wish every exercise was this awesome").word_count ("awesome")).to(eq(1))
  end

end
