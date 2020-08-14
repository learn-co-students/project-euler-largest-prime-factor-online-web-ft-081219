# Enter your object-oriented solution here!

class LargestPrimeFactor
  attr_reader :input, :number

  def initialize(input)
    @input = input
    @number = self.largest_prime_factor()
  end

  def largest_prime_factor
    prime = @input
    (2...Math.sqrt(@input.to_i)).each do |n|
      break if prime <= 1
      prime /= n while (prime > n && prime % n == 0)
    end
    prime
  end

end
