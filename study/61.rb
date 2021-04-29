# array in arrays
a = []

for c in 0 .. 5 do
    a.push [c]
    for b in 0 .. 10 do 
        a[c].push b
    end
   
end
print a 