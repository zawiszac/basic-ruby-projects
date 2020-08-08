# frozen_string_literal: true

def letter?(char)
  char =~ /[[:alpha:]]/
end

def upper_case?(char)
  char == char.upcase
end

def lower_case?(char)
  char == char.upcase
end

def caesar_cipher(str, shift)
  str.split('').map do |char|
    if upper_case?(char) && letter?(char)
      ((((char.ord - 65) + shift) % 26) + 65).chr
    elsif lower_case?(char) && letter?(char)
      ((((char.ord - 97) + shift) % 26) + 97).chr
    else
      char
    end
  end
end

puts 'Enter a string to encrypt: '
str = gets.chomp
puts 'Enter an integer for the encryption key: '
shift = gets.chomp.to_i
puts caesar_cipher(str, shift).join
