require 'rspec'

class ApiConnector
  attr_accessor :attempts, :errors

  def initialize
    @attempts = 0
    @errors = []
  end

  def send_data
    begin
      @attempts += 1
      api_call
    rescue Errno::ETIMEDOUT => e
      @errors << e
      retry if @attempts < 3
    end
  end

  def api_call
    raise Errno::ETIMEDOUT
  end
end

describe 'ApiConnector' do
it 'attempts to connect with an API 3 times and stores the errors in an array' do
  api = ApiConnector.new
    api.send_data
    expect(api.attempts).to eq(3)
    expect(api.errors.to_s).to eq("[#<Errno::ETIMEDOUT: Operation timed out>, #<Errno::ETIMEDOUT: Operation timed out>, #<Errno::ETIMEDOUT: Operation timed out>]")
  end
end



#what happens when an API call fails and how we can handle it
#we want the 1 2 3 times we hit error we want to cycle back through
#create a loop or what we do below
#we can implement built in RETRY- retry if attemps is < 3
#create an attribute, attemps, set to 0 
#everytime is occurs we are going to increment variable by 1
#its going to make call and fail, then come down into resure block-attemps, then if less then 3 it retrys again
#it will increment by 1 until 3 times


#TO TEST- on line 25 type api = ApiConnector.new
#                         api = send_data
#                         api.attemps
#test will reveal 3 attemps


#we need to store what errors occur
#add an atter execssor @ errors = []    takes erros and pipes into error array

# run rspec test
#rspec "file_name.rb"