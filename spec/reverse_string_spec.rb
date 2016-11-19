require "reverse_string"

describe "#reverse_string" do
	it "returns empty string if input is empty" do
		s = ""
		expect(reverse_string(s)).to be_empty
	end

	it "returns the same string if the length is 1" do
		s = "a"
		expect(reverse_string(s)).to eql(s)
	end

	it "returns the reversed string" do
		s = "abc"
		expect(reverse_string(s)).to eql("cba")
	end
end