class Squares
  def initialize(total)
    @total = total
  end

  def square_of_sum
    (1..@total).reduce(:+)**2
  end
end
