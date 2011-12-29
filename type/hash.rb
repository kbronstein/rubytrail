
languages = {:ruby => "Cool", :java => "Boring", "PHP" => "Ugh"}

languages.each_pair do |key, value|
    puts "#{key} is #{value}"
end

# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
# What to do when the key of a hash does not exist?
# To handle this kind of situation, pass a block argument 
# when calling new.
#
bonjour = Hash.new{|hash, key| p "Key #{key} does not exist." }

bonjour["fr"] = "Bonjour"
bonjour["en"] = "Hello"
bonjour["es"] = "Hola"

puts bonjour["de"] # => Key de does not exist.
