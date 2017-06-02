require 'rspec'

def clone_cycle collection, def
  final_items = []
  
  num.times do
    collection.each do |x|
      final_items << x
  end
end

final_items

describe 'Cloned cycle' do
  it 'Iterates through an array a variable number of times and returns the full set of elements' do
    arr = (1..3)
    expect(cloned_cycle(arr, 3)).to eq([1, 2, 3, 1, 2, 3, 1, 2, 3])
  end
end

cloned_cycle [1, 2, 3], 3







#[1, 2, 3].cycle(3).to_a
#what is going on to build an algorithm