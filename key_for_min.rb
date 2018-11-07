# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  previous_value = nil
  lowest_key = nil
  name_hash.collect do |key,value|
    if previous_value.empty?
      previous_value = value
    if value < previous_value
      previous_value = value
      lowest_key = key 
    end
  end
  lowest_key
end