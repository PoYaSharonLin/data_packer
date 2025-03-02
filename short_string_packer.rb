# frozen_string_literal: true

# Packs/Unpacks a String to and from an Integer
module ShortStringPacker
  ## Packs a short string into a Integer
  # Arguments:
  #   str - String object
  # Returns: a Integer object
  def self.pack(str)
    # IMPLEMENT THIS METHOD
    # step1: alphabet to number
    alphabet = ('a'..'z').to_a
    str_array = str.chars
    num_array = str_array.map { |s| alphabet.index(s) + 1 }
    # puts num_array

  #   # step2: number to bits
  #   max_bit = Math.log(26, 2).ceil
  #     def num2bi(num)
  #       num_array = Array.new(5)
  #       num_array.each do |num|
  #         lsb = num & 1
          
  #     end
  #     def to binary(num_array)
  #       num_array.each { |num| }
  #       binary_array = []


  #     end
  end

  ## Unpacks a Integer from pack() method into a short string
  # Arguments:
  #   packed - a Integer object
  # Returns: a String object
  def self.unpack(packed)
    # IMPLEMENT THIS METHOD
  end
end

# test 
test1 = 'string'
puts ShortStringPacker.pack(test1)

