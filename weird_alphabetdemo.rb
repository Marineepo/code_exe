require 'rspec'  # => true

def weird_alphabet
  ('a'..'z').sort do |l, r|  # => "a".."z"
    if l == 'k'              # => false, false, false, false, false, false, false, false, false, false, false, true, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, true, false, true, false, false, false, false, false, false, false, false, false, false, fals...
      1                      # => 1, 1, 1, 1, 1
    else
      l <=> r                # => -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, -1, 1, 1, -1, 1
    end                      # => -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, -1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, 1, -1, 1, -1, 1, -1, 1, -1, -1, -1, -1, -1, 1, -1, -1, -1, -1, -1, 1, -1, 1, -1, -1, -1, -1, -1, -1, -1, 1, 1, 1, 1, -1, 1, -1, 1, -1, -1, -1, 1, 1, -1, -1, -1, 1, 1, -1, 1
  end                        # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "k"]
end                          # => :weird_alphabet

describe 'Weird Alphabet' do
  it 'creates and sorts the alphabet, but places the letter k at the end' do
    expect(weird_alphabet.last).to eq('k')
    expect(weird_alphabet.first).to eq('a')
  end                                                                         # => #<RSpec::Core::Example "creates and sorts the alphabet, but places the letter k at the end">
end                                                                           # => RSpec::ExampleGroups::WeirdAlphabet

weird_alphabet  # => ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "k"]



#we want to sort it with k at the end
#create a range of letters by using a then .. z range system
#then call sort, sort takes a block and passing 2 ietms to it ( l and r)
#(sort works looks and ompares to items)
#space ship operator returns a cpmpaison of 1 or -1 
#
#now we want to check and see if left side(block) is equal to k, I want to pass in one
#forces the letter k to placed at the end becaus one is return value and seen to the right of collection
#then else use default  spaceship to see if left or right is greater
#review-spaceship compares returns 1 or -1 we are overwriting 
#what ever the case is, is K we want you to hard code the default..want k to the right
#then call "weird_alphabet"
#rspec weird_alphabet.rb
#=1 example 0 failures

#this shows comparison between 2 items