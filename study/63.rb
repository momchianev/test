###
a = []

for row in 0 .. 9 do
    a.push []
    for col in 0 .. 5 do
        if col % 2 == 0
            a[row].push 0
        else
            a[row].push 1
        end
    end
end

print a 
print "\n"