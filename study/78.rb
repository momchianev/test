#merge matrix pt.2
require_relative './helpers'
arr = [[1,2],[3,4]]
arr2 = [[2,3,4],[5,7,8]]
arr3 = []
idx = 0

while idx < arr.length
    arr3.push []
    arr3[idx] = mergematrices arr[idx], arr2[idx]

    idx = idx + 1
end
print arr3 

