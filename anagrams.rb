words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

result = {}

words.each do |word|
  key = word.split('').sort.join
  unless result.has_key? key
    result[key] = [word]
  else
    result[key].push word
  end
end

result.values.each {|v| p v}