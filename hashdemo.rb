require 'rspec'

class Hash
  def param_converter
    self.maps { |i| i* "=" } * "&"


describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end


