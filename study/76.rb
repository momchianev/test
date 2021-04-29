
def mergematrices arr, arr2 
    arr3 = []
    for num in arr do 
        arr3.push num 
    end

    for num in arr2 do
        arr3.push num
    end
    return arr3 
end


## merge the matrices
arr = [0,1,1,0]
arr2 = [2,3,5,4]
print mergematrices arr, arr2





