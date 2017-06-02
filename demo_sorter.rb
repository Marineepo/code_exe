require 'rspec'

def total_sorter invoices
  invoices.sort_by do |Invoice|
    invoice.total
  end.reverse
end

Invoice = Struct.new(:name, :total, :category)
google = Invoice.new('Google', 500, 'Marketing')
amazon = Invoice.new('Amazon', 1000, 'eCommerce')
yahoo = Invoice.new('Yahoo', 300, 'Marketing')

invoices = [google, amazon, yahoo]

total_sorter invoices






describe 'Invoice sorter' do
  it 'sorts a set of invoices by their totals' do
    Invoice = Struct.new(:name, :total, :category)
    google = Invoice.new('Google', 500, 'Marketing')
    amazon = Invoice.new('Amazon', 1000, 'eCommerce')
    yahoo = Invoice.new('Yahoo', 300, 'Marketing')

    invoices = [google, amazon, yahoo]

    expect(total_sorter(invoices).first.name).to eq('Amazon')
    expect(total_sorter(invoices).last.name).to eq('Yahoo')
  end
end



#database query use in a real life application
#name a total and a catagory
#solution must pass test
#invoices inside of an array-an array of strubs
#we need to sort-amazing is expected to be first item, it has largest total
#take in total, 
#reverse takes all invoices and sorts by total and when it is returned it reverses the value
#
#unitlize sort by method
#Amzon is returned first then google then yahoo..............
#