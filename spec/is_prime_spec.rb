require "is_prime"

describe "#is_prime" do
	it "is false that 0 is a prime number" do
		expect(is_prime(0)).to be false
	end

	it "is false that 1 is a prime number" do
		expect(is_prime(1)).to be false
	end

	it "is true that 2 is a prime number" do
		expect(is_prime(2)).to be true
	end

	it "is true that 3 is a prime number" do
		expect(is_prime(3)).to be true
	end

	it "is false that 4 is a prime number" do
		expect(is_prime(4)).to be false
	end

	it "is true that 5 is a prime number" do
		expect(is_prime(5)).to be true
	end

	it "is false that 10 is a prime number" do
		expect(is_prime(10)).to be false
	end

	it "is true that 23 is a prime number" do
		expect(is_prime(23)).to be true
	end

	it "is false that 77 is a prime number" do
		expect(is_prime(77)).to be false
	end
end