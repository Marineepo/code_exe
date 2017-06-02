Class Card
  
  def initialize
    @suit = :clubs
  end
  
  def suit
    @suit
  end
end

describe Card do 
   
   it "should have a suit" do
     Card.new.suit.should be_nil
   end   
   it "should have a value"
   it "should accept suit and value when building"

end