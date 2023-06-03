arr = [1,2,3,4,5]

def select_test arr
  arr.select(&:even?)
end

p select_test arr 