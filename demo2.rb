
require 'rspec'



# ¥

# £

# $



def currency_converter amount, location
case location
when 'US' then"$4.21" % amount
when 'Japan' then "£4.21" % amount
when 'UK' then ("¥4.21" % amount).gsub('.', '.')

end
end

puts currency_converter 'Japan'




describe 'Currency converter' do

  it 'can properly format currency for US, Japan, and UK' do

    expect(currency_converter 5000, 'US').to eq('$5000.00')

    expect(currency_converter 5000, 'Japan').to eq('¥5000')

    expect(currency_converter 5000, 'UK').to eq('£5000,00')

  end

end