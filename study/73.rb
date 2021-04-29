# find dublicate
require_relative './helpers'

arr = [1,1,2,3,3,4,5,3,6]
len = arr.length
idx = 0 
arr2 = []
arr3 = []


# find the unique number without their repeat 
while idx <= len - 1
    if !existsinarray arr2, arr[idx]
        arr2.push arr[idx]
    end
    idx = idx + 1
end

print arr2



# make an array arr3 with 0 in each position
for idx in arr2 do
    arr3.push 0
end 


#complete the arr3 with repeat times of each number 
for num in arr do
    idx = nameri arr2, num
    arr3[idx] = arr3[idx] + 1
end
print arr3  

