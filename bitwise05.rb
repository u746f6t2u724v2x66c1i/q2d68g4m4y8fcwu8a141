#!/bin/ruby

require 'json'
require 'stringio'

#
# Complete the 'bitwiseAnd' function below.
#
# The function is expected to return an INTEGER.
# The function accepts following parameters:
#  1. INTEGER N
#  2. INTEGER K
#

def bitwise_and(n, k)
    max_value = 0
    for i in 1..n
        for j in i+1..n
            value = i & j
            if value > max_value && value < k
                max_value = value
            end
        end
    end
    return max_value
 end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

t = gets.strip.to_i

t.times do |t_itr|
    first_multiple_input = gets.rstrip.split

    count = first_multiple_input[0].to_i

    lim = first_multiple_input[1].to_i

    res = bitwise_and count, lim

    fptr.write res
    fptr.write "\n"
end

fptr.close()
