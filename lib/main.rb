# To change this template, choose Tools | Templates
# and open the template in the editor.

require 'open-uri'
require 'nokogiri'
 
doc = Nokogiri::HTML(open("http://www.associationforcoaching.com/member_search/ind/accredited/All/?page=2"))
doc.xpath('//ul/li').each do |node|
  puts node.text
end