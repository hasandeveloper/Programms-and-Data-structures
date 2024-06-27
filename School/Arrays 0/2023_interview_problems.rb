require 'pry'
# I/P
foo = {
    :bar => ['r', 'baz'],
    :baz => ['words', 'etc', 'long words'],
    :blah => ['at']
}
# O/P
# {:blah=>["at"], :bar=>["r", "baz"], :baz=>["words", "etc", "long words"]}

def ascending_values_order foo
    hashed = {}
    ascending_value_hashed = Hash.new(0)
    foo.each { |k,v| ascending_value_hashed[k] += v.length }
    
    arr = ascending_value_hashed.values

    loop do
        swaped = false
        (arr.length-1).times do |i|
            if arr[i] > arr[i+1]
                arr[i], arr[i+1] = arr[i+1], arr[i]
                swaped = true
            end
        end
        break if not swaped
    end

    arr.each do |n|
        foo.each do |k,v|
            if n == v.length
                hashed[k] = v
            end
        end
    end

    hashed
end

result = ascending_values_order foo
p result

# ----------------------------------------------------------------------------------------------------------------

# I/P: 
str = "aaaabbcbbb"
# O/P:
# ["b", 5]

def max_occurence str
    repeating_string = Hash.new(0)
    str.split("").each { |ele| repeating_string[ele] += 1}
    repeating_string.max_by{ |k,v| v }
end

result1 = max_occurence "aaaabbcbbb"
p result1

# ----------------------------------------------------------------------------------------------------------------

# I/P: 
str = "Hello Hasan welcome"

def reverse_str str
    reversed = []
    str.split(" ").each do |ele|
        reversed.unshift(ele)
    end 
    reversed.join(" ")
end

result2 =  reverse_str str
p result2

# ----------------------------------------------------------------------------------------------------------------

# I/P: 
h = {ab: 1, abc: 3, abde: 4, a:1}  

# O/P:
# ["a", "ab", "abc", "abde"]


def sort_keys_and_return_ascending h
    keys = []
    h.each do |k,v|
        keys << k.to_s
    end
    keys.sort_by{ |ele| ele }
end

result3 = sort_keys_and_return_ascending h
p result3


# ----------------------------------------------------------------------------------------------------------------
# I/P:
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']

# O/P:
# "ice"

def print_word_doesnt_begin_with_w_and_s(letters)
    words = []
    letters.each do |word|       
        ele = word.split("").first
        next if ["W","S"].include? ele 
        next if ["w","s"].include? ele 
            words << word 
    end
    words.join(" ")
end
result4 = print_word_doesnt_begin_with_w_and_s(arr)
p result4


# ----------------------------------------------------------------------------------------------------------------
# I/P:
arr = ["C", "C", "A", "B"]
arr = ["C", "A", "B"]
# O/P:
# ["C", 2]
# nil
def majority_vote arr
    vote_count = Hash.new(0)
    arr.each { |ele| vote_count[ele] += 1 }
    max_value = vote_count.values.max
    if vote_count.values.count(max_value) > 1
        return nil
    else
        vote_count.max_by{|k,v| v}
    end
end

p majority_vote(arr)

# ----------------------------------------------------------------------------------------------------------------
# I/P:
x = [{"Bus" => 10},{"train" => 20},{"car" => 30}]
# O/P:
# {"Bus"=>10, "car"=>30, "train"=>20}
def sort_hash(x)
    hashed = Hash.new
    x.each do |ele|
        hashed[ele.first[0]] = ele.first[1]
    end
    hashed.sort_by{|k,v| k}.to_h 
end

p sort_hash(x)


# h = {a: {b: {e: "e", f: "f"}}, d: {c: "d"}, f: "f"}
# # abe
# # abf
# # dc
# # f

# h.each do |ele|
#     n = ele[0].join("")
#     n = ""
#     ele.each do |ele1|
#         n << ele1.keys.join("")
#     end
# end


# ----------------------------------------------------------------------------------------------------------------


# Find the consecutive repeating number from input
# I/p 346555578123999021344

# O/p[5555, 999, 44]

def consecutive_number str
    arr = str.split("")
    repeating = []
    temp_arr = []
    arr.each_with_index do |v,i|
        if v == arr[i+1]
            temp_arr << v
        end

        if i != 0 && v == arr[i-1] && v != arr[i+1]
            temp_arr << v
            repeating << temp_arr.join("")
            temp_arr.clear
        end
    end
    repeating
end
result5 = consecutive_number("346555578123999021344")
p result5

# ----------------------------------------------------------------------------------------------------------------

               
# Implement the function StringSwapForUs(str), such that it will toggle the case of all the characters of the given string str.
# For example: input 
# str= Hello-LOL
# output str = hELLO-lol

def swap_str str
    test_str = []

    str.split("").each do |ele|
        
        if ele == ele.upcase
            test_str << ele.downcase
        elsif ele == ele.downcase
            test_str << ele.upcase
        end

    end

end

p swap_str "Hello-LOL"


# ----------------------------------------------------------------------------------------------------------------


# create hash with character as key and count of the character as value - not required to 2024 interview


def character_frequency str
    hash_var = Hash.new(0)
    str.split("").map{ |ele| hash_var[ele] += 1 }
    return hash_var
end

p character_frequency "adityapandey"


# ----------------------------------------------------------------------------------------------------------------


# 1.	one array containing all keys
# 2.	another containing all values
# 3.	the sum of all the values

x = [{"a" => 10},{"b" => 20},{"c" => 30}]
sum = 0
x.each { |obj| sum+= obj.values[0]}


# ----------------------------------------------------------------------------------------------------------------

array = [ 1, 2, 3, 4, 10, 12, 14, 17, 20, 23, 25, 27, 31, 33, 40, 43, 51, 53, 57, 59, 60, 67, 73, 76, 80, 87, 92, 93, 97, "string", 3.14, 0, nil, false, true, ""]


# With out using any inbuilt method identify the odd and even numbers from the given
# require 'pry'
def even_odd array
    even = []
    odd = []
    filtered = array.select{|ele| ele.is_a? Integer}

    filtered.each do |ele|
        if ele % 2 != 0
            odd << ele
        else
            even << ele
        end
    end
    return odd, even
end

p even_odd array



26

check_array_sorted.rb - not required to 2024 interview
find_fact_number.rb - done
has.rb - done 
one_line_code_sum_of_val.rb - not required to 2024 interview
palindrome.rb - done
print_all_pairs_sum_k.rb - not required to 2024 interview
print_all_pairs.rb - not required to 2024 interview
tes.rb - work only missing element problem 
anagram.rb - done
mean_and_median.rb


#convert this "a" into an array
a = "/test/test12/18"
a.split('/').reject(&:empty?)


# Storable company ----- start

# Given a list of available storage units (including their dimensions) and a customer's space requirements,
# determine which unit is the cheapest option for the customer.
#
#
# The following customer requirements will be provided:
# Total Floor Area Required (square feet)
# Largest Single Item Dimensions (LxWxH)
class StorageUnit
    attr_accessor :unit_id
    attr_accessor :price
    attr_accessor :dimensions
   
   
    def initialize(args = {})
      @unit_id = args[:unit_id]
      @price = args[:price]
      @dimensions = args[:dimensions]
    end
   
   
    def ==(other)
      other&.unit_id == @unit_id &&
        other&.price == @price &&
        other&.dimensions == @dimensions
    end
   
   
   end
   
   
   class Dimensions
    attr_accessor :length
    attr_accessor :width
    attr_accessor :height
   
   
    def initialize(args = {})
      @length = args[:length]
      @width = args[:width]
      @height = args[:height]
    end
   
   
    def ==(other)
      other&.length == @length &&
        other&.width == @width &&
        other&.height == @height
    end
   end
   
   require 'pry'
   # TODO:
   def cheapest_viable_unit(available_units:, requested_floor_area:)
       # non optimise
   
       # units = []
       # available_units.each do |unit|
       #     calc = unit.dimensions.length * unit.dimensions.height
       #     if calc >= requested_floor_area
       #         units << unit
       #     end
       # end
   
       
       # if units.empty?
       #     return nil
       # else
       #     units.sort_by{ |unit| unit.price }.first
       # end
   
       
       # optimise
       
       units = available_units.select{ |unit|  unit.dimensions.length * unit.dimensions.height >=  requested_floor_area ? unit : nil }
       units.sort_by{ |unit| unit.price }.first
   end
   
   
   
   
   def run_test(expected, inputs)
    if cheapest_viable_unit(**inputs) == expected
      puts 'pass'
    else
      puts 'fail'
    end
   end
   
   
   
   
   unit1 = StorageUnit.new(
    unit_id: '1',
    price: 60.00,
    dimensions: Dimensions.new(length: 1, width: 1, height: 1)
   )
   
   
   unit2 = StorageUnit.new(
    unit_id: '2',
    price: 80.00,
    dimensions: Dimensions.new(length: 6, width: 5, height: 8)
   )
   
   
   unit3 = StorageUnit.new(
    unit_id: '3',
    price: 100.00,
    dimensions: Dimensions.new(length: 12, width: 8, height: 6)
   )
   
   
   # When no units match the given requirements due to needed area should return nil
   units_input = [unit1, unit2, unit3]
   needed_area = 97
   run_test(
    nil,
    { available_units: units_input, requested_floor_area: needed_area }
   )
   # When multiple units match the needed size, should return the cheapest unit.
   units_input = [unit3, unit2, unit1]
   needed_area = 30
   run_test(
    unit2,
    { available_units: units_input, requested_floor_area: needed_area }
   )
   
   
   # largest item check -> If the largest item the customer has fits into the storage unit
   
   
   
   
# Storable company ----- end
