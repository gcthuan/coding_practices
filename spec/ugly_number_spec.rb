require "ugly_number"

describe "#is_ugly" do
	it "is false that 0 is an ugly number" do
		expect(is_ugly(0)).to be false
	end

	it "is true that 1 is an ugly number" do
		expect(is_ugly(1)).to be true
	end

	it "is true that 2 is an ugly number" do
		expect(is_ugly(2)).to be true
	end

	it "is true thạt 5 is an ugly number" do
		expect(is_ugly(5)).to be true
	end

	it "is false that 7 is an ugly number" do
		expect(is_ugly(7)).to be false
	end

	it "is true that 675 is an ugly number" do
		expect(is_ugly(675)).to be true
	end

	it "is false that 124 is an ugly number" do
		expect(is_ugly(124)).to be false
	end
end