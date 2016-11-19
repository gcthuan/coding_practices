require "remove_cont_duplicate"

describe "#remove_cont_duplicate" do
	it "returns empty string if the input is empty" do
		s = ""
		expect(remove_cont_duplicate(s)).to be_empty
	end

	it "returns the same string if the input length is one" do
		s = "a"
		expect(remove_cont_duplicate(s)).to eql(s)
	end

	it "removes continous duplicates in a string with same chars" do
		s = "aaaaaa"
		expect(remove_cont_duplicate(s)).to eql("a")
	end

	it "removes continous duplicates in a random strong" do
		s = "abcccdededeeeffwff"
		expect(remove_cont_duplicate(s)).to eql("abcdededefwf")
	end
end