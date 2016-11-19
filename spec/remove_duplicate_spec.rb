require "remove_duplicate"

describe "#remove_duplicate" do
	it "returns empty string if the input is empty" do
		s = ""
		expect(remove_duplicate(s)).to be_empty
	end

	it "returns the same string if the length of input is 1" do
		s = "a"
		expect(remove_duplicate(s)).to eql(s)
	end

	it "removes duplicate chars in the input string with same chars" do
		s = "aaa"
		expect(remove_duplicate(s)).to eql("a")
	end

	it "removes duplicate chars in a random input string" do
		s = "abcciswwsammwasww"
		expect(remove_duplicate(s)).to eql("abciswm")
	end
end