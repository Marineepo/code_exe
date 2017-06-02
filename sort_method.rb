require 'rspec'

def state_sorter states
  states.sort_by do |state|
    state[-2, 2]
    
end

describe 'State Data Sorter' do
  it 'properly sorts an array of states, even when the elements contain additional preceding values' do
    states = ['- AZ', 'KY', '* FL', '-- AR']
    expect(state_sorter(states).first).to eq('-- AR')
    expect(state_sorter(states).last).to eq('KY')
  end
end

states = ['- AZ', 'KY', '* FL', '-- AR']

states.sort states







# myhash = {
#   "- AZ" => "AZ",
#   "KY" => "KY",
#   "--AR" => "AR",
# }
# m = myhash.values
# puts m.map{|i| i.downcase}.sort



#describe 'State Data Sorter' do
#  it 'properly sorts an array of states, even when the elements contain additional preceding values' do
#    states = ['- AZ', 'KY', '* FL', '-- AR']
#    expect(state_sorter(states).first).to eq('-- AR')
#    expect(state_sorter(states).last).to eq('KY')
#  end
#end





#this is not what the professor asked for but I did pull correct answer
#using a hash instead of an array