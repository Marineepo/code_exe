require 'rspec'

class Array
  def remove_duplicates
    self.each_with_object([]) do |e, arr|
      arr << e unless arr.include?(e)
    end
  end
end

describe 'Duplicate removal' do
  it 'Removed duplicates from an array' do
    arr = [1, 3, 4, 1, 4]
    expect(arr.remove_duplicates).to eq([1, 3, 4])
  end
end

arr = [1, 3, 4, 1, 4]
arr.remove_duplicates
#arr.remove_duplicates
#using a hash gives us access to send an object intoo
#first is element and then new array_represents the array in the argument
#I want to add to the new array unless the array already includes a new element
#(pipe in what ever the element is in the array)(first time it goes through wiill be an empty array)
#(next time it iterates 3 is the new element, and then added it in, and so on and so on)
#        "self.each with object-calling remove duplicates on itself"
#
#
#
#
#
#
#