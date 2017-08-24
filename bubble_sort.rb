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

def bubble_sort_by(arr)
  arr.each_index do |num|
    if block_given? && num < arr.length - 1
      if yield(arr[num], arr[num+1]) > 0
        arr[num], arr[num+1] = arr[num+1], arr[num]
      end
    end
  end
  puts arr
end

bubble_sort_by(["hi", "hello", "hey"]) do |left, right|
  left.length - right.length
end
#hi,hey,hello
