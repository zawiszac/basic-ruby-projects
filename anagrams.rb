# frozen_string_literal: true

words =  %w[demo none tied evil dome mode live
            fowl veil wolf diet vile edit tide
            flow neon]

result = {}

words.each do |word|
  key = word.split('').sort.join
  if result.key? key
    result[key].push word
  else
    result[key] = [word]
  end
end

result.values.each { |v| p v }
