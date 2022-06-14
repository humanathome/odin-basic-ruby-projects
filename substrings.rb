dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(word, valid_substrings)
  substring_count_hash = Hash.new(0)
  lowercase_text = word.downcase

  valid_substrings.each do |substring|
    matches_found = lowercase_text.scan(substring).length
    substring_count_hash[substring] = matches_found unless matches_found == 0
  end

  substring_count_hash
end


p substrings("below", dictionary)
# => { "below" => 1, "low" => 1 }

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
