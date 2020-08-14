# Enter your procedural solution here!

def largest_prime_factor(input)
  prime = input
  (2...Math.sqrt(input.to_i)).each do |n|
    break if prime <= 1
    prime /= n while (prime > n && prime % n == 0)
  end
  prime
end
