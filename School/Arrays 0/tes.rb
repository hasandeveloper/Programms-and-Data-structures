# # class Array
# #     def to_s
# #         return "Hello"
# #     end
# # end

# # class Collection < Array
# #     def to_s
# #         #logic here
# #     end
# # end
# # p ["1","2"].to_s
# require 'pry'
# def odd_entries(str)
#     arr = str.split("")
#     odd_string = []
#     arr.each_with_index do |v,i| 
#         if i.odd?
#             odd_string << v
#         end
#     end
#     odd_string.join("")
# end

# p odd_entries("0123456789")



# active { where(active: true)}


# module Father
#     def some
#     end
# end

# class Mother
# end

# class child < Mother
#     include Father
# end

# begin
#     a = 0
#     # api fires 

# rescue ErrorName
#     retry 5
# ensure 
#     # print log or trigger slack alert
# end

# a = [1,2,3,4,6,7,8,9,10]

# def missing_ele  a
#     # b = (a.first..a.last).to_a
#     # b - a
#     # a.delete_at(2)
#     # a.delete_at(4)
#     # a

# end

# p missing_ele a



# company has_may departments

# departments has_may employees

# company has_may employees



