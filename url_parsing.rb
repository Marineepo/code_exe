require 'rspec'
#url parser
#reg expre-tool to utlize to implement pattern matching in app
#its going to look at strings if it finds a URL it will simple match it
#method that takes in a string and when it finds a string, then it will change it/convert it and return something used in HTML page
#<a tag makes it clickable
#helps when you make helper methods

#regex is looking for pattern in a string
#leveraging the gsub-method in ruby allows us to pass in reg ex
#allows us to use block syntax 
#the place an A tag, insert string interplation, close off and target window 
#gsub looks at every location in a sting that has a pattern
#then allows us to do what we want with it
def url_parser str
  regex = %r{
    \b
    (
      (?: [a-z][\w-]+:
       (?: /{1,3} | [a-z0-9%] ) |
        www\d{0,3}[.] |
        [a-z0-9.\-]+[.][a-z]{2,4}/
      )
      (?:
       [^\s()<>]+ | \(([^\s()<>]+|(\([^\s()<>]+\)))*\)
      )+
      (?:
        \(([^\s()<>]+|(\([^\s()<>]+\)))*\) |
        [^\s`!()\[\]{};:'".,<>?«»“”‘’]
      )
    )
  }ix

  str.gsub(regex) do |url|
    "<a href='#{url}' target='_blank'>#{url}</a>"
  end
end

describe 'URL Parser' do
  it 'converts strings that contain URLs into HTML links' do
    str_one = "Some content without a link."
    str_two = "Content with a link that has a period after it https://devcamp.com."
    str_three = "https://devcamp.com that starts at the beginning"

    expect(url_parser str_one).to eq("Some content without a link.")
    expect(url_parser str_two).to eq("Content with a link that has a period after it <a href='https://devcamp.com' target='_blank'>https://devcamp.com</a>.")
    expect(url_parser str_three).to eq("<a href='https://devcamp.com' target='_blank'>https://devcamp.com</a> that starts at the beginning")
  end
end

