require 'rspec'
require 'date'

 result = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
 Date.new(2017).to_date.upto(Date.new.to_date) do |month_array|
     result << [month_array]
 end




describe 'Month generator' do
  it 'returns the full list of months for a year as an array' do
    expect(result).to eq(["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"])
  end
end


# def motnhs
#  ((Date.new(2017, 01))..(Date.new(2017, 12))).each_with_object([]) do |do, month_array|
#   month_array << date.strftime("%B")
#  end.uniq
# end
#
#
# def smarter_months
#   Date::MONTHNAMES[1..12]
# end
# 
# smarter_names
#
#
#