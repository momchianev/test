## matrix + matrix

arr = [2,3,]
arr2 =[5,6]
arr3 = []
idx = 0
def summatrices arr, arr2 
    arr3 = []
    idx = 0 
    while idx < arr.length 
        if arr.length != arr2.length
            print "ednoto e po dulgo"
            break
        end
        arr3.push arr[idx] + arr2[idx]
        idx = idx + 1
    end 
    return arr3
end
