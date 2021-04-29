require_relative './helpers'

c = ["lubo", "kris", "momo"]
len = c.length

# creates array with initial balances
a = []
for row in 0 .. len - 1 do
    a.push []
    for col in 0 .. 2 do
        a[row].push 0         
    end
end 

printArray a

while true
    print "koi dava kinti"
    k = gets 
    k = k.chomp 
    print "koi vzima kinti"
    m = gets
    m = m.chomp
    print "kolko kinti"
    t = gets
    t = t.to_i

    if t == 0
        break
    end

    user1idx = nameri c, k
    user2idx = nameri c, m 

    a[user1idx][user2idx] = a[user1idx][user2idx] + t
    a[user2idx][user1idx] = a[user2idx][user1idx] - t

    printArray a
end






