### get array and number and find if the number already exists

arr = [1,2,3,4]
len = arr.length
idx = 0
number = 3

def existsinarray arr 
    while idx <= len - 1
        if number == arr[idx]
            return true
        end
        idx = idx + 1
        
    end
    return false 
end