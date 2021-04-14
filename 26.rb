# tata
a = [ 1, 4, 6, 11, 12, 15, 8, 9, 20, 19]
c = a.length 
sum = 0

for idx in 0 .. c do
    if a[idx] % 2 == 0
        sum = a[idx] + sum
    end
end
print sum 

while idx < c
    if a[idx] % 2 == 0
        sum = a[idx] + sum
    end
end 
print sum 