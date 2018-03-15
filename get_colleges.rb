require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('https://talk.collegeconfidential.com/alphabetic-list-colleges/'))
doc.css(".Wrap a").each do |x|
  puts x.content+"@"
end
