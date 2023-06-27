# if true
# puts 'TRUE'
# else 
# puts 'FALSE'
# end


# if []
#     puts 'TRUE'
#     else 
#     puts 'FALSE'
#     end

#     if 0
#         puts 'TRUE'
#         else 
#         puts 'FALSE'
#         end

#         if nil
#             puts 'TRUE'
#             else 
#             puts 'FALSE'
#             end

            # if false
            #     puts 'TRUE'
            #     else 
            #     puts 'FALSE'
            #     end

#                 truthy and falsy concept

#                 callback and observer

#                 dynamic scaffold and static scaffolding


                
# Implement the function StringSwapForUs(str), such that it will toggle the case of all the characters of the given string str.
# For example: input 
# str= Hello-LOL
# output str = hELLO-lol

# def swap_str str
#     test_str = []

#     str.split("").each do |ele|
        
#         if ele == ele.upcase
#             test_str << ele.downcase
#         elsif ele == ele.downcase
#             test_str << ele.upcase
#         end

#     end

# end

# p swap_str "Hello-LOL"



# Program for Ruby developer
# quarter: 25, 
# dime: 10, 
# nickel: 5, 
# penny: 1

# Enter Number: 43
# Output : {:quarter=>1, :dime=>1, :nickel=>1, :penny=>3}
# Program should be include Class, class method, use of hash

# create hash with character as key and count of the character as value


# def character_frequency str
#     hash_var = {}
#     str.split("").each do |ele|
#         unless hash_var.key? ele
#             hash_var[ele] = 1
#         else
#             val = hash_var[ele]
#             hash_var[ele] = val+=1
#         end
#     end

#     return hash_var

# end

# p character_frequency "adityapandey"











# ------------------- cont





# Find biggest group of consecutive numbers from the given number set 
# Input = 346555578123999021344
# Output = {5=>4}

# def highest_consecutive str
#     hash_var = {}
#     highest_consecutive_ele = 0
#     str.split("").each do |ele|
#         unless hash_var.key? ele
#             hash_var[ele] = 1
#         else
#             val = hash_var[ele]
#             hash_var[ele] = val+=1
#         end
#     end
# end

# p highest_consecutive "346555578123999021344"






# x = [{"a" => 10},{"b" => 20},{"c" => 30}]

# 1.	one array containing all keys
# 2.	another containing all values
# 3.	the sum of all the values

# 1.	Find the consecutive repeating pattern from input. 

# I/p 

#  346555578123999021344

# O/p

# [5555, 999, 44]

# def consecutive_number(str)
#     split_array = str.split("")
#     array = []
#     temp_arr = []
#     split_array.each_with_index do |v, i|
#         if v == split_array[i+1] 
#             temp_arr << v
#         end
#         unless v == split_array[i+1] 
#             temp_arr << v if v == split_array[i-1]

#             array << temp_arr.join("").to_i
#             temp_arr.clear
#         end
#     end

#      array

# end

# p consecutive_number("346555578123999021344")
