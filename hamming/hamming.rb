# BookKeeping module added in seperate file 

class Hamming
  def self.compute(sample_one, sample_two)
    raise ArgumentError if sample_one.length != sample_two.length
    hamming_distance = 0
    sample_one.each_char.with_index do |nucleic_acid, index|
      hamming_distance += 1 unless nucleic_acid == sample_two[index]
    end
    hamming_distance
  end
end
