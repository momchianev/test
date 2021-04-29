###
a = []

for row in 0 .. 9 do
    a.push []
    for col in 0 .. 5 do
        a[row].push (row + col) % 2
    end
end

print a 
print "\n"