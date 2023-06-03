# Given an array Arr of size N, swap the Kth element from beginning with Kth element from end.

# Example 1:

# Input:
# N = 8, K = 3
# Arr[] = {1, 2, 3, 4, 5, 6, 7, 8}
# Output: 1 2 6 4 5 3 7 8
# Explanation: Kth element from beginning is
# 3 and from end is 6.
# Example 2:

# Input:
# N = 5, K = 2
# Arr[] = {5, 3, 6, 1, 2}
# Output: 5 1 6 3 2
# Explanation: Kth element from beginning is
# 3 and from end is 1.

def swap_kth_element(array, k)
    f_array = array[k-1]
    l_array = array[-k]
    array[k-1] = l_array
    array[-k] = f_array
    return array
end

p swap_kth_element([5, 3, 6, 1, 2], 2)