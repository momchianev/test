a = [ 1 , 12 , 15 , 14, 3 ]
idx = 0 
b = a.length 

while idx < b - 1
    if a[idx] > a[idx + 1]
        a[idx] , a[idx + 1] = a[idx + 1] , a[idx]
        idx = 0 
    else 
        idx = idx + 1
    end 
end
