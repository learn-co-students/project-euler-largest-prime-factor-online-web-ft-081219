# Enter your object-oriented solution here!

class LargestPrimeFactor
    attr_reader :input, :number

    def initialize(input)
        @input = input
        @number = self.largest_prime_number()
    end

    def largest_prime_number
        prime = @input
        (2...Math.sqrt(@input.to_i)).each do |n|
            break if prime <= 1
            prime /= n while (prime > n && prime % n == 0)
        end
        prime
    end
end
