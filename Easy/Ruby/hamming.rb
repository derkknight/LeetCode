=begin
The Hamming distance between two integers is the number of positions at which the corresponding bits are different.

Given two integers x and y, calculate the Hamming distance.
=end

def hamming_distance(x, y)
    result = x^y
    result = result.to_s(2)
    result = result.count("1")
    return result
end