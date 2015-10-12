# Implement your object-oriented solution here!

class EvenFibonacci

  def initialize(limit)
    @limit = limit
  end

  def sum
    array = [1, 2]
    while array.last < @limit
      sum = (array.last + array[(array.length) - 2])
      array << sum
    end
    array.pop if array.last > @limit
    array.reject!{|n| n%2 != 0}
    array.reduce(:+)
  end
end
