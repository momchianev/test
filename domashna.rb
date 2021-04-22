##
arr = [2,6,12,8,18,20]
len = arr.length
min = arr[0]
max = arr[0]
idx = 0
sum = 0
 
while idx <= len - 1
    if max < arr[idx]
        max = arr[idx]
    end
    if min > arr[idx]
        min = arr[idx]
    end
    idx = idx + 1
    sum = max - min 
end
print sum 

    



