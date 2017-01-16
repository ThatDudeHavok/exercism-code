class Squares
  def initialize(total)
    @total = total
  end

  def square_of_sum
    @total == 0 ? 0 : (1..@total).reduce(:+)**2
  end

  def sum_of_squares
    @total == 0 ? 0 : (1..@total).reduce do |total, number|
      total = (total + number**2)
    end
  end

  def difference
    square_of_sum - sum_of_squares
  end
end

module BookKeeping
  VERSION = 3
end
