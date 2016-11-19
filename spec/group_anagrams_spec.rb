require "group_anagrams"

describe "#group_anagrams" do
	it "returns empty array if the input is empty" do
		arr = []
		expect(group_anagrams(arr)).to be_empty
	end

	it "splits the input into 1 group of anagram" do
		arr = ["one", "eno"]
		expect(group_anagrams(arr).length).to eql(1)
	end

	it "splits the input into 2 groups of anagram" do
		arr = ["car", "eat", "arc", "ate", "tea"]
		expect(group_anagrams(arr).length).to eql(2)
	end

	it "splits the input into 3 groups of anagram" do
		arr = ["car", "eat", "arc", "ate", "men", "tea", "nem", "enm"]
		expect(group_anagrams(arr).length).to eql(3)
	end
end