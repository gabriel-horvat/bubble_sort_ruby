def bubble_sort(a)
  n = a.length
  numSwaps = 0
  # if array < 1 return array straight away else sort
  if n < 1
    return a
  else
  loop do
    swapped = false
    (n - 1).times do |i|
      if a[i] > a[i + 1]
        a[i], a[i + 1] = a[i + 1], a[i]
        swapped = true
        numSwaps += 1
      end
    end
  break if swapped != true
  end
  puts "Array is sorted in #{numSwaps} swaps."
  puts "First Element: #{a[0]}"
  puts "Last Element: #{a[-1]}"
  end
end

a = [3, 2, 1]

p bubble_sort(a)
