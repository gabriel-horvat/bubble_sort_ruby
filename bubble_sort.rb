# create bubble sort in ruby
def bubble_sort(array)
  # total number of elements in our array
  n = array.length
  if n < 1 # if our array is empty or only contains one element return it straight away so as to not do unneccessary work
    array
  else
    # sort array
    loop do
      # initialize swapped boolean as false
      swapped = false
      # iterate through given array until end of arrray eg array - 1
      (n - 1).times do |i|
        if array[i] > array[i + 1] # if ith element in given array is smaller than next array ie array[i + 1]
          array[i], array[i + 1] = array[i + 1], array[i] # swap array[i] with element right next to it
          # set swapped boolean to true since we just swapped adjacent array elements
          swapped = true
        end
      end
      break if swapped != true # break loop once itereated through entire array else you get infinite loop and terminal crashes
    end
    # return sorted array
    array
  end
end

# test method
a = [7, 6, 5, 4, 3, 2]
p bubble_sort(a)

