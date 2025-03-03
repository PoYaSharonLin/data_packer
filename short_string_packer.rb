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
    # print num_array

    # step2: number to bit operation
    max_bits = Math.log(26, 2).ceil
    res = num_array.inject(0) { |acc, num| acc << max_bits | num }
    # print res 
  end

  # Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    # Unpack the integer back into the original string
    str = []
    while packed > 0
      str.unshift(((packed & 31) + 'a'.ord - 1).chr) # Extract the last 5 bits and map to 'a'-'z'
      packed >>= 5 # Right shift the packed integer
    end
    str.join
  end
end


