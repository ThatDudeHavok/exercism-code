class Raindrops
  def self.convert(n)
    converstion_string = ""

    converstion_string += "Pling" if n % 3 == 0
    converstion_string += "Plang" if n % 5 == 0
    converstion_string += "Plong" if n % 7 == 0

    converstion_string != "" ? converstion_string : n.to_s
  end
end

module BookKeeping
  VERSION = 3
end
