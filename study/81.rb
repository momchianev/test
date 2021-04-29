#dot product matrices 
require_relative './helpers'

arr = [[1,2,3,4],[1,2,3,4],[1,2,3,4]]
arr2 = [[1,2],[1,2],[1,2],[1,2]]
arr3 = []
idx = 0 

if arr[0].length != arr2.length
    print "razlichna duljina"
end

for row in 0..arr.length - 1 do
    arr3.push []
    for col in 0 .. arr2[row].length - 1 do 
        arr3[row].push (multiplematrices arr[row], (getColumn arr2, col) )
    # na reda na arr 3   napishi umnojenieto na reda na arr i kolonata na arr2
    end
end

print arr3
        

