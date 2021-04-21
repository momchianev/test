# array

a =  ["lubo", "momo", "kris"]

idx = 0
n = a.length 

dulji = []

while idx <= n - 1
    print "     #{a[idx]}" 
    idx = idx + 1
end
print "\n"

idx = 0 

while idx <= n - 1
    
    print a[idx]
    
    for c in 1 .. n do
        print "      0"
    end
    print "\n"
    
    idx = idx + 1
end

