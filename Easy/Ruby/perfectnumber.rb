=begin
507
We define the Perfect Number is a positive integer that is equal to the sum of all its positive divisors except itself.

Now, given an integer n, write a function that returns true when it is a perfect number and false when it is not.
=end

# @param {Integer} num
# @return {Boolean}
def check_perfect_number(num)
    squareroot = Math.sqrt(num)
    sum = 0
    for i in 1..squareroot
        if num % i == 0
            sum += i
        end
    end
    if sum == num
        return true
    end
    return false
end

check_perfect_number(28)