require 'rspec'

def num_counter nums
  nums.inject(Hash.new(0)) do |hash, e|
    hash[e] += 1
    hash
  end
end






describe 'Number counter' do
  it 'returns a hash that contains the number of occurrences for each array element' do
    arr = [1, 4, 1, 3, 2, 1, 4, 5, 4, 4, 5, 4]
    expect(num_counter(arr)).to eq(
                                    {
                                      1=>3,
                                      4=>5,
                                      3=>1,
                                      2=>1,
                                      5=>2
                                    }
                                  )
  end
end

arr = [1, 4, 1, 3, 2, 1, 4, 5, 4, 4, 5, 4]
num_counter arr


# when we are passed an array 
#histogram is a counter
#furst make a method num counter and take a nums arg
#then nums . inject and then pass in a hash-to count values- make it empty with (0)
#then pass in a block and an incrementor value |hash, e| then eleent your interating over
#then hash e = its going to take key value then whenever it finds things
#+=1 incrementing by 1 -add one to the number
#then return hash
#// inject does a lot it moves numbers from one data type to another
#// taking numbers and putting them into a new hash, then identify
