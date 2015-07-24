def getNumberOfPrimes(n)
    not_prime_array = []
    i = 2
    while (i <= (Math.sqrt(n).floor))
        j = 2
        while ((j*i) <= n)
            if !not_prime_array.include?(j*i)
                not_prime_array << j*i
            end
            j += 1
        end
        i += 1
    end
    p "non prime list"
    p not_prime_array
    list_of_nums = [*2..n]
    p "primes list"
    p primes = list_of_nums - not_prime_array
    p "primes count"
    p num_of_primes = primes.count
end

getNumberOfPrimes(20)
getNumberOfPrimes(100)