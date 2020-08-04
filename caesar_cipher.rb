
def letter?(ch)
  ch =~ /[[:alpha:]]/
end

def caesar_cipher(str, shift)

  str.split('').map do |char|

    if char == char.upcase && letter?(char)
      char = ((((char.ord - 65) + shift) % 26) + 65).chr
    elsif char == char.downcase && letter?(char)
      char = ((((char.ord - 97) + shift) % 26) + 97).chr
    else
      char = char
    end

  end
end

puts "Enter a string to encrypt: "
str = gets.chomp
puts "Enter an integer for the encryption key: "
shift = gets.chomp.to_i
puts caesar_cipher(str, shift).join