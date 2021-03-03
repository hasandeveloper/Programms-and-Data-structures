def fib(n)
  return 0 if n == 0
  return 1 if n == 1

  k = fib(n-1) + fib(n-2)
  return k
end

p fib(5)
#          fib(1)   # |                            |   
                    # |                            |  
                    # |    return 0 if 1 == 0      |
                   #  |    return 1 if 1 == 1      | 1
                   #  |                            |   
                    # |----------------------------|
#          fib(2)   # |                            |   
                    # |                            |  
                    # |    return 0 if 2 == 0      |
                   #  |    return 1 if 2 == 1      | 
                   #  |                            | 
                    # |    k = fib(2-1) + fib(2-2) |  1 + 0   /  1 + 0 = 1
                    # |    return k                |         
                    # |                            |   
                    # |----------------------------|
#          fib(3)   # |                            |   
                    # |                            |  
                    # |    return 0 if 3 == 0      |
                   #  |    return 1 if 3 == 1      | 
                   #  |                            | 
                    # |    k = fib(3-1) + fib(3-2) |  2 + 1  / 1 + 1 = 2
                    # |    return k                |         
                    # |                            |   
                    # |----------------------------|
#          fib(4)   # |                            |   
                    # |                            |  
                    # |    return 0 if 4 == 0      |
                   #  |    return 1 if 4 == 1      | 
                   #  |                            | 
                    # |    k = fib(4-1) + fib(4-2) |  3 + 2  / 2 + 1 = 3
                    # |    return k                |         
                    # |                            |   
                    # |----------------------------|
                    # |                            |   
#          fib(5)   # |                            |   
                    # |                            |  
                    # |    return 0 if 5 == 0      |
                   #  |    return 1 if 5 == 1      | 
                   #  |                            | 
                    # |    k = fib(5-1) + fib(5-2) |  4 + 3  / 3 + 1 = 4
                    # |    return k                |         
                    # |                            |   
                    # |----------------------------|