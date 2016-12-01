require "selection_sort"

describe "#selection_sort" do
	it "returns empty array if the input is empty" do
		arr = []
		expect(selection_sort(arr)).to be_empty
	end

	it "returns the same array if the input length is 1" do
		arr = [1]
		expect(selection_sort(arr)).to eql(arr)
	end

	it "returns the sorted array" do
		arr = [3,99,1,22,17,18,3,7,21,22]
		expect(selection_sort(arr)).to eql([1,3,3,7,17,18,21,22,22,99])
	end
end