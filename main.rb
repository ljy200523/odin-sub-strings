require "pry-byebug"
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
  # > substrings("below", dictionary)
  # => { "below" => 1, "low" => 1 }
  # > substrings("Howdy partner, sit down! How's it going?", dictionary)
  # => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

def substrings(query, substring_list)
  result = Hash.new(0)
  substring_list.each do |word|
    if query.downcase.include?(word)
      result[word] += 1
    end
  end
  binding.pry
  puts result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)
