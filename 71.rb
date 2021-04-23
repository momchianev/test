###function for sum in array

arr =  [4,12,17,16]



def namerisuminarray arr 
    len = arr.length
    sum = 0
    broqch = 0
    
    while broqch <= len - 1
        sum = sum + arr[broqch]
        broqch = broqch + 1
    end
    
    return sum 
end

print namerisuminarray arr 