#sum the matrix 

arr = [1,2,3,4,5]
arr2 = [2,3,4,5,6] 

def summatrices arr, arr2
    idx = 0 
    sum = 0 
    while idx < arr.length
        if arr.length != arr2.length 
            print "razlichna duljina"
            break
        end 
        sum = sum + arr[idx] * arr2[idx]
        idx = idx + 1 
    end
    return  sum 
end

print summatrices arr, arr2