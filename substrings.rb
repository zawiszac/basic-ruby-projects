def substrings(str, arr)
  arr.reduce({}) do |frequencies, substring|
    count = str.downcase.scan(/#{substring}/).length
    frequencies.update(substring => count)
  end
end

dictionary = ["ow", "below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)