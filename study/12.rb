# from 10 to n

n = gets
while n.to_i >= 10
    if n < 10
        puts "try with bigger then 10"
    end
    n = n + 1
    print n
end
