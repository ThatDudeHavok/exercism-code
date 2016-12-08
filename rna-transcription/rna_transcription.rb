class Complement
  def self.of_dna(dna_sequence)
    transcribed_rna = ""

    dna_sequence.each_char do |nucleotide|
      rna_aminoacid = transcribe_to_rna(nucleotide)
      if rna_aminoacid
        transcribed_rna << rna_aminoacid
      else
        return transcribed_rna = ""
      end
    end
    transcribed_rna
  end

  private
    def self.transcribe_to_rna(nucleotide)
      case nucleotide
      when 'C'
        'G'
      when 'G'
        'C'
      when 'T'
        'A'
      when 'A'
        'U'
      else
        false
      end
    end
end

module BookKeeping
  VERSION = 4
end
