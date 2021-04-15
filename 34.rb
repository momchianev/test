# buble sort
a = [1, 8, 3, 12, 7]
idx = 0
n = a.length

while idx < n - 1
    # change a sign ( < > ) to reverse the order 
    if a[idx] < a[idx + 1]
        a[idx], a[idx + 1] = a[idx + 1], a[idx]
        idx = 0 
    else 
        idx = idx + 1
    end 
end 
print a 


