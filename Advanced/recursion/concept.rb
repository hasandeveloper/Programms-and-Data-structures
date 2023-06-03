# Before moving to recursion do backtracing of fuctions

# def bar(a)
#     c = 15
#     a = a + c      
#     p a             20
#     return a       
# end

# def foo(a)
#     c = 5
#     a = a + c     
#     a = bar(c)     
#     p a            20
#     return a
# end

# def main 
#     a = 10
#     p a            10
#     a = foo(a)     
#     return 0
# end

#  main()

# #  o/p
# 10 main
# 20 bar
# 20 foo   

#  For the Above functions Stack/heap Frame visualization
# |----------------------------|
# |           bar              |
# |           c = 15           |   
# |           a = a + c        |   // 15
# |           p a              |   // print second 20         As soon as do function return the frame will be deleted              
# |                            |   
# |----------------------------|
# |           foo              |
# |           c = 5            |   
# |           a = a + c        |   // 15
# |           a = bar(c)       |   // print third 20                      
# |           p a              |   
# |----------------------------|   
# |           main             |   
# |          a = 10            |   
# |          p a               |   // print first 10
# |          a = foo(a)        |   //20
# |----------------------------|

#Here as soon as main function is calling to foo and foo calling to bar in stack frame, In stack(c)/heap(ruby)  frame will be created as soon as main function called. once frame created to main, predefined space will be created to store variable which is present in main and also you can obeserve in main function a = foo() here before foo get called after this calling function whatever lines are there even those lines will be stored in stack/heap memory and then for foo another frame will be create same will be happen for foo how happend for main.

# But once you return in any function those functions will be deleted in the stack/heap memory

# Recusion works based on 3 principles
# 1.Base condition/terminating condition
# 2.processing
# 3.return         

# def work_hard a
#     if a == 0
#         return 
#     end

#     work_hard(a -= 1)
#     p a

#     return a
# end

# work_hard 5

                            # Heap/stack frame from work_hard

                    # |      if 0 == 0             |   
# work_hard(0)      # |         return             |   
                    # |      end                   | 
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|
                    # |      if 1 == 0             |   
# work_hard(1)      # |         return 0           |   
                    # |      end                   | 
                    # |                            |
                    # |       work_hard(1 -= 1)    |
                    # |       p 0                  |
                    # |                            |
                    # |       return 0             | 
                    # |                            |   
                    # |----------------------------|
                    # |      if  2 == 0            |   
# work_hard(2)      # |         return 0           |   
                    # |      end                   | 
                    # |                            |
                    # |       work_hard(2 -= 1)    |
                    # |       p 1                  |
                    # |                            |
                    # |       return 1             | 
                    # |                            |   
                    # |----------------------------|
                    # |      if 3 == 0             |   
# work_hard(3)      # |         return 0           |   
                    # |      end                   | 
                    # |                            |
                    # |       work_hard(3 -= 1)    |
                    # |       p 2                  |
                    # |                            |
                    # |       return 2             | 
                    # |                            |   
                    # |----------------------------|
                    # |      if 4 == 0             |   
# work_hard(4)      # |         return 0           |   
                    # |      end                   | 
                    # |                            |
                    # |       work_hard(4 -= 1)    |
                    # |       p 3                  |
                    # |                            |
                    # |       return 3             | 
                    # |                            |     
                    # |----------------------------|   
                    # |      if 5 == 0             |   
# work_hard(5)      # |         return 0           |   
                    # |      end                   | 
                    # |                            |
                    # |       work_hard(5 -= 1)    |
                    # |       p 4                  |
                    # |                            |
                    # |       return 4             | 
                    # |                            |   
                    # |----------------------------|

# For the above we took 5 internal space in the heap/stack


# def fact(n)
#     if n <= 1
#         return 1
#     else

#         return n * fact(n-1)
#     end
# end

# p fact(4)
                            # Heap/stack frame from fact

                    # |      if -1 <= 0            |   
# fact(-1)          # |         return 1           |   
                    # |      end                   |   
                    # |----------------------------| 
                    # |      if 1 <= 0             |   
# fact(1)           # |         return 1           |   
                    # |      else                  | 
                    # |         return 1*fact(-1)  |
                    # |      end                   |   1 * 1 = 1
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------| 
                    # |      if 2 <= 0             |   
# fact(2)           # |         return 1           |   
                    # |      else                  | 
                    # |         return 2*fact(1)   | 2 * 1 = 2
                    # |      end                   |
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------| 
                    # |      if 3 <= 0             |   
# fact(3)           # |         return 1           |   
                    # |      else                  | 
                    # |         return 3*fact(2)   | 3 * 2 = 6
                    # |      end                   |
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|   
                    # |      if 4 <= 0             |   
# fact(4)           # |         return 1           |   
                    # |      else                  | 
                    # |         return 4*fact(3)   | 4 * 6 = 24
                    # |      end                   |
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|


# class Gfg
#     def self.print_function(test)
#         return if test < 1

#         p test

#         print_function(test - 1)

#         p test 
#         return
#     end
# end

# gfg = Gfg.print_function(3)

                # stack/Heap frame for print_function

# print_function(0) # |                            |   
                    # |   return if 0 < 1          |  
                    # |                            | 
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|                                                     
# print_function(1) # |                            |   
                    # |   return if 1 < 1          |  
                    # |                            | 
                    # |   p 1                      | third 3 from down
                    # |   print_function(1 - 1)  0 |
                    # |   p 1                      | first 1 from top
                    # |   return                   |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|                                                 
# print_function(2) # |                            |   
                    # |   return if 2 < 1          |  
                    # |                            | 
                    # |   p 2                      | second 2 from down
                    # |   print_function(2 - 1) 1  | 
                    # |   p 2                      | second 2 from top
                    # |   return                   |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|                 
                    # |                            |   
# print_function(3) # |                            |   
                    # |   return if 3 < 1          |  
                    # |                            | 
                    # |   p 3                      | first 3 from down
                    # |   print_function(3 - 1) 2  | 
                    # |   p 3                      | third 3 from top
                    # |   return                   |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|

def fun1 n
    return 0 if n == 1
    return 1 + fun1(n/2)
end

p fun1(17)

                    # |                            |   
#     fun1(0.53125) # |                            |   
                    # |    return 0 if 0.53125 < 1 |  
                    # |                            | 
                    # |                            | 
                    # |                            | 
                    # |                            | 
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|
                    # |                            |   
#      fun1(1.0625) # |                            |   
                    # |   return 0 if 1.0625 < 1   |  
                    # |   return 1 + fun1(1.0625/2)| 0.53125
                    # |                            | 
                    # |                            | 
                    # |                            | 
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|
                    # |                            |   
#       fun1(2.125) # |                            |   
                    # |    return 0 if 2.125 < 1   |  
                    # |    return 1 + fun1(2.125/2)| 1.0625
                    # |                            | 
                    # |                            | 
                    # |                            | 
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|
                    # |                            |   
#        fun1(4.25) # |                            |   
                    # |    return 0 if 4.25 < 1    |  
                    # |    return 1 + fun1(4.25/2) | 2.125
                    # |                            | 
                    # |                            | 
                    # |                            | 
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|
#         fun1(8.5) # |                            |   
                    # |    return 0 if 8.5 < 1     |  
                    # |    return 1 + fun1(8.5/2)  | 4.25
                    # |                            | 
                    # |                            | 
                    # |                            | 
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|
                    # |                            |   
#          fun1(17) # |                            |   
                    # |    return 0 if 17 < 1      |  
                    # |    return 1 + fun1(17/2)   | 8.5
                    # |                            | 
                    # |                            | 
                    # |                            | 
                    # |                            |
                    # |                            |
                    # |                            | 
                    # |                            |   
                    # |----------------------------|


# def fun1(x, y)

# if x == 0
#         return y
# else
#         return fun1(x-1,x+y)
# end

# end

# p fun1(2, 2)
                    
                    
                    
                                        # |                            | 
                                        # |  if 0 == 0                 | 
                                        # |       return 5             | 
                      #  fun1(0, 5)     # |                            | 
                                        # |                            |
                                        # |  end                       |
                                        # |                            |
                                        # |                            | 
                                        # |                            |   
                                        # |----------------------------|
                                        # |                            | 
                                        # |  if 1 == 0                 | 
                                        # |       return 4             | 
                      #  fun1(1, 4)     # |   else                     | 
                                        # |       return fun1(1-1,1+4) |
                                        # |  end                       |
                                        # |                            |
                                        # |                            | 
                                        # |                            |   
                                        # |----------------------------|
                                        # |                            | 
                                        # |  if 2 == 0                 | 
                                        # |       return 2             | 
                      #  fun1(2, 2)     # |   else                     | 
                                        # |       return fun1(2-1,2+2) |
                                        # |  end                       |
                                        # |                            |
                                        # |                            | 
                                        # |                            |   
                                        # |----------------------------|