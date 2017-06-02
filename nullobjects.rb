require 'rspec'
#meta program that catch methods that are passed in and return nullobject
class NullClass
  def method_missing(name, *args, &block)
    self
  end
  
  def respond_to_missing?(name, include_private = false)
    name.to_s || super
    #converts to a string or returns super or parent
  end
end
#method missing taking in 3 args block takes any call and captures it
#method_missing doesn't give a ability to take a class

null = NullClass.new
null.any_method
null.respond_to? :some_method
#making sure something is equal to nothing
#nil is a method equal to nothing in ruby
#takes lack of data and puts it onto nothing
#create a black hole for objects where you can have a class and recieve any time of method
#and not throw an error-return an instance of itself


describe 'Null class' do
  before do
    @null = NullClass.new
  end

  it 'Returns NullClass object for standard method calls even when not defined' do
    expect(@null.something).to eq(@null)
  end
#when we pass in the something we want it to equal the null object
#system giving back an object and not halting the program
#return object itesle
  it 'Returns true when asked if it responds to non existent methods' do
    expect(@null.respond_to? :something).to eq(true)
  end
  #ability to implement null object-method something does it respond to something
  #

  it 'Returns NullClass for for method calls with arguments, even when not defined' do
    expect(@null.anything('hey')).to eq(@null)
  end
  #ability to pass in arg
  #anything with pass in hey


  it 'Returns NullClass for for method calls with a block, even when not defined' do
    expect(@null.anything { 2 * 2 }).to eq(@null)
    #ability to pass a block to too anything
  end
end
