@string =ARGV[0].to_s

def make_hash
  text = @string.split(/\s+/)
  hash ={}
  while key = text.shift
    value = text.shift
    hash[key] = value
  end

  hash.each do |key,value|
    p "#{key}:#{value}"
  end
end

make_hash
hash
