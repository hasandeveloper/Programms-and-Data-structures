  # Given a square matrix, turn it by 90 degrees in anti-clockwise direction  without extra spaces

  # What is transpose?
  # https://www.youtube.com/watch?v=NmQWIFGFLjo

  # How transpose works mathematically?
  # https://www.youtube.com/watch?v=V9dZ-qqCLmc


  # Example: i/p
  # 123
  # 456
  # 789

  # o/p
  # 741
  # 852
  # 963
require 'pry'
  def rotate_anti_clock_wise(mat)

    #transpose matrix
    (mat.length).times do |n|  # Rows

      (mat.length).times do |n1| #columns

        if n < n1
          temp = mat[n][n1]
          mat[n][n1] = mat[n1][n]
          mat[n1][n] = temp
        end

      end

    end

    #Interchange column
    (mat.length).times do |n|  # Rows
      (mat.length/2).times do |n1| #columns
        temp = mat[n][n1]
        mat[n][n1] = mat[n][mat.length-1-n1]
        mat[n][mat.length-1-n1] = temp
      end
    end
    mat
  end

  p rotate_anti_clock_wise([ [1, 2, 3 ], 
                             [4, 5, 6 ], 
                             [7, 8, 9 ] ] 
                          )