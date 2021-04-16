# ask for number and if enter 3 -> 1+11+111
# if enter 3 find 111

def chislo n
    n = n.to_i 
    n = n - 1
    sum = 0
    
    while n >= 0
        sum = sum + 10**n
    
        n = n - 1
    end

    return sum
end

print chislo(6)

