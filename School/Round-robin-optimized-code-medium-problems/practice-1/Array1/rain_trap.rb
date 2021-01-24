# Given n positive integer in an array where each represent a bar of width 1. calculate how much water it is able to trap

# [0,2,1,3,0,1,2,1,2,1] o/p:- 5
# [1,3,0,1,2,0,4,1,2] o/p:- 10
require 'pry'
def rain_trap(array)
    rmax = []
    lmax = []
    total = 0
    len = array.length
    temp = []
    len.times do |i|

      (len-i).times do |n|
          temp << array[i+n]
      end

      loop do
        swaped = false

        (temp.length - 1).times do |n|
            if temp[n] > temp[n+1]
                temp[n], temp[n+1] = temp[n+1], temp[n]
                swaped = true
            end
        end

        break if not swaped
      end

      rmax << temp[-1]
      temp.clear()

    end

    (0..array.length - 1).to_a.reverse_each do |indx|

        (0..indx).to_a.reverse_each do |i|
            temp << array[i]
        end

        loop do
            swaped = false
    
            (temp.length - 1).times do |n|
                if temp[n] > temp[n+1]
                    temp[n], temp[n+1] = temp[n+1], temp[n]
                    swaped = true
                end
            end
    
            break if not swaped
        end

          lmax.unshift(temp[-1])
          temp.clear()

    end

    tmp_temp = []

    len.times do |i|
        tmp_temp.push(lmax[i]) &&  tmp_temp.push(rmax[i])
        total = total + tmp_temp.min - array[i]
        tmp_temp.clear()
    end

    total

end

p rain_trap([1,3,0,1,2,0,4,1,2])