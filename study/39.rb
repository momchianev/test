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

input = gets
input = input.to_i

sum = 0

while input >= 1
    sum = sum + chislo(input)

    input = input -1
end

print sum