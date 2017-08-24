def bubble_sort(arr)
  x=arr.length
  i=0
  while i < x
    arr.each_index { |val| arr[val], arr[val+1] = arr[val+1], arr[val] if val < arr.length - 1 && arr[val] > arr[val+1] }
    i+= 1
  end
  puts arr
end

bubble_sort([4,3,78,2,0,2])
#0,2,2,3,4,78

def bubble_sort_by

end
