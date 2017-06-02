require 'rspec'

def find_element collection, element
  collection.each do |e|
   return e if e[1] == element
    
    
  end
end

  





describe 'Find Element' do
  it 'returns an array from a nested array if the second element equals the queried element' do
    players = [
      [27, 'Jose Altuve'],
      [2,  'Alex Bregman'],
      [1,  'Carlos Correa'],
      [9,  'Marwin Gonzalez'],
      [10, 'Yulieski Gurriel']
    ]

    expect(find_element(players, 'Jose Altuve')).to eq([27, 'Jose Altuve'])
  end
end



#we have 5 different arrays, we want to build a method and then take in a string
#if element exist, entire array is brought back
#return entire array if e or names is equal to element we are searching for
#find_element(players, 'Jose Altuve')
# [27, 'Jose Altuve']
#players = [
 #[27, 'Jose Altuve'],
 # [2,  'Alex Bregman'],
 # [1,    'Carlos Correa'],
 # [9,    'Marwin Gonzalez'],
 # [10, 'Yulieski Gurriel']
#]
#

#     OR USE!!!!!!!!!!

# def find_element collection, element
#   collection.rassoc('element')
# end
#


#p find_element(players)
#
#             run rspec and name of the file