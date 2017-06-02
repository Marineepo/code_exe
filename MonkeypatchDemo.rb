require 'rspec'

module RubyContent
  refine String do
    def commentize
      "# #{self}"
    end
  end
end

module HtmlContent
  refine String do
    def commentize
      "<!-- #{self} -->"
    end
  end
end

class ContentController
  using RubyContent
  
  
  def initialize(word)
    @word = word
  end

  def hidden_content
    @word.commentize     
  end
end

class HtmlController
  using HtmlContent
  
  def initialize(word)
    @word = word
  end
  
  def hidden_content
    @word.commentize     
  end
end


 cc = ContentController.new("My String")
    expect(cc.hidden_content).to eq("# My String")
    
    html = HtmlController.new("My html content")
    expect(cc.html_content).to eq("# My String")

describe 'Refining Strings for a specific module' do
  it 'changes the behavior of the String method to make it render as a comment' do
    cc = ContentController.new("My String")
    expect(cc.hidden_content).to eq("# My String")
  end
end
#we have a ruby class above content controller. inside we have an intailzed def
#hidden_conetnt, we want to pass in the word. if you call hidden content on it,
#we have to have a word called commentize.


# (don't opwn class string def commentize "# #{self}" end end 
 #"Myword" shows "# => My word"
 #we want to use the code that is placed in above. Anytime commentize is called
# it uses rubys version
#we use refinements
#insetad of opending up a new class open a module, label ruby content. pnly
#going to be refined when someone uses the rubycontent module....only
#works inside of using RubyContent 