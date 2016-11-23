class Squares
  def initialize(limiting_number)
    @limiting_number = limiting_number
  end

  def square_of_sum
    range_total = (0..@limiting_number).inject(:+)
    range_total**2
  end

  def sum_of_squares
    (0..@limiting_number).inject do |total, num|
      total += num**2
    end
  end

  def difference
    (sum_of_squares - square_of_sum).abs
  end
end

module BookKeeping
  VERSION = 3
end
