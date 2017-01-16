class Squares
  def initialize(limit)
    @limit = limit
  end

  def square_of_sum
    (1..@limit).reduce(:+)**2
  end

  def sum_of_squares
    (1..@limit).reduce do |total, number|
      total = (total + number**2)
    end
  end

  def difference
    return 0 if @limit == 0
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
