# print 2 numbers


n = 10
b = gets

def subirane ( n , b )
    n = n.to_i
    b = b.to_i 

    while n <= b 
        n = n + 1
        print n 
    end
end

subirane(n,b)

