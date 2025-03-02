# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    # IMPLEMENT THIS METHOD

    # step0: prep
    alphabet = ('a'..'z').to_a
    str_array = str.chars

    # step1: alphabet to number
    num_array = str_array.map { |s| alphabet.index(s) + 1 }
    # puts num_array

    # step2: number to bits
    bit_array = Array.new(num_array.length * Math.log(26, 2).ceil)
    bit_array.length.times do |index|
      num_array.each do | num |
      msb = num & 1
      num <<= 1
      bit_array[index] = msb
      end 
    end
    puts bit_array

    # step3: bits to int 
  #   result = bit_array.reduce(0) { |acc, bit| (acc << 1) | bit }
  #   puts result
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  # def self.unpack(packed)
  #   # IMPLEMENT THIS METHOD
  # end
end

test1 = "abc"
puts ShortStringPacker.pack(test1) 