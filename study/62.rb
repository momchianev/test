# [[1,1,1,1,][2,2,2,2,2,2].....]
a = []

for row in 0 .. 9 do
    a.push []
    for col in 0 .. 5 do
        a[row].push row + 1
    end
end

print a 
print "\n"