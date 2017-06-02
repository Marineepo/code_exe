require 'rspec'

def string_sum nums
  nums,map(&:to_i).inject(&:t)
end


describe 'Summing Strings' do
  it 'sums an array of string based integers' do
    expect(string_sum('1'..'20')).to eq(210)
    expect(string_sum('100'..'1000')).to eq(495550)
  end

  it 'sums an array of integers' do
    expect(string_sum(100..1000)).to eq(495550)
  end
end









#class Array
#  def string_sum
#    inject { |sum, x| sum + x }
#  end
#end




#['1', '2', '3', '4'].string_sum