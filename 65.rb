#### search the position in array
def nameri arr, query  
    len = arr.length
    for idx in 0 .. len - 1 do
        if query == arr[idx]
            return idx  
        else 
        end
    end
end 



# print array 
def printArray arr
    len = arr.length  
    for row in 0 .. len - 1 do
        for col in 0 .. arr[row].length - 1 do 
            print arr[row][col]
        end
        print "\n"
    end
end


c = ["lubo", "kris", "momo"]
idx = c.length

# creates array with initial balances
a = []
for row in 0 .. idx - 1 do
    a.push []
    for col in 0 .. 2 do
        a[row].push "0"
        
    end
end 

printArray a

print "koi dava kinti"
k = gets 
k = k.chomp 
print "koi vzima kinti"
m = gets
m = m.chomp
print "kolko kinti"
t = gets
t = t.to_i

print nameri c, k

print nameri c, m 

