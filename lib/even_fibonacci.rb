# Implement your procedural solution here!
#
def even_fibonacci_sum(limit)
  array = [1, 2]
  sum = (array.last + array[(array.length) - 2])
  array << sum
  while array.last < limit
    sum = (array.last + array[(array.length) - 2])
    array << sum
  end
  if array.last > limit
    array.pop
  end

  sum = 0
  array.each do |n|
    if n%2 == 0
      sum += n
    end
  end
  sum
end
