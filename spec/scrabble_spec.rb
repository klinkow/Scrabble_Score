require('rspec')
require('scrabble')

describe("String#scrabble") do
  it("Returns a scrabble score for a letter (upper-case)") do
    expect("A".scrabble()).to(eq(1))
  end
end

describe("String#scrabble") do
  it("Returns a scrabble score for a letter (lower-case)") do
    expect("a".scrabble()).to(eq(1))
  end
end

describe("String#scrabble") do
  it("Returns a scrabble score for a word (mixed case)") do
    expect("word".scrabble()).to(eq(8))
  end
end
