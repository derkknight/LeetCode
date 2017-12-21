=begin
344
Write a function that takes a string as input and returns the string reversed.
=end

# @param {String} s
# @return {String}
def reverse_string(s)
    array = s.chars
    for i in 0..array.size/2
        if array.size % 2 == 0 && i == array.size/2
            next
        end
        firstchar = array[i]
        lastchar = array[array.size - i - 1]
        array[i] = lastchar
        array[array.size - i -1] = firstchar
    end
    return array.join
end