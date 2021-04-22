###
require_relative './helpers'

#highest number in 2 or more arrays in array
def highestnumber2 arr
    idx = 0 
    idx2 = 0 
    max = arr[0][0]

    while idx <= arr.length - 1

        if (highestnumber arr[idx]) > max
            max = highestnumber arr[idx]
            idx2 = idx 
        end 
        idx = idx + 1
    end
    return arr[idx2]
end

array = [[2,3,4],[5,18,12],[3,7],[1,2]]

chislo = highestnumber2 array 
print chislo 
