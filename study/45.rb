# Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.
  n = 0
  sum = 0

  while n <= 10 
    sum = sum + n 
    n = n + 1
  end
  print sum ** 2
  print "\n"

  n = 0 
  sum = sum ** 2 
  b = 0
  
  while n <= 10
    b = b + n ** 2
    n = n + 1
  end 
    print b 
  print "\n"
  print sum - b 