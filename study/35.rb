# find the min number in array


a = [18, 8, 3, 12, 7]
idx = 0
min = a[0]
n = a.length

while idx <= n - 1
    if a[idx] < min 
        min = a[idx]
    end
    
    idx = idx + 1
end
print min 
