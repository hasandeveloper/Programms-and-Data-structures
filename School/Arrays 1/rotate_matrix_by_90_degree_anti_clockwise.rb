# Given a square matrix, turn it by 90 degrees in anti-clockwise direction with spaces
require 'pry'
def rotate_matrix(matrix)

    #create multi dimensional array
    anti_clock = Array.new(matrix.length) { Array.new }

    #Rotate matrix to anitclock
    matrix.each_with_index do |m, i|

      index = 0
      m.reverse_each do |m|
        anti_clock[index].push(m)
        index+=1
      end

    end


    anti_clock.each do |ele|
      p ele.join(" ")
    end


end

 rotate_matrix(matrix = [
    [1,2,3],
    [4,5,6],
    [7,8,9]
  ])

  # Given a square matrix, turn it by 90 degrees in anti-clockwise direction  without extra spaces

