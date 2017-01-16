class Squares
  def initialize(total)
    @total = total
  end

  def square_of_sum
    (1..@total).reduce(:+)**2
  end

  def sum_of_squares
    (1..@total).reduce do |total, number|
      total = (total + number**2)
    end
  end
end
