#functions

a = [1,5,3,8,96,6,7,13,15,20]
idx = 0
max = a[1]
n = a.length 
def highestnumber arr 
    while idx <= n - 1
        if max > a[idx] 
            max = max
        else 
            max = a[idx]
        end
        
        idx = idx + 1
    end
    return max
end
