require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'resolv-replace'
require 'xpath'



def get_all_the_urls_of_val_doise_townhalls

page = Nokogiri::HTML(open('https://coinmarketcap.com/all/views/all/'))

cloud_elements2 = page.xpath("//td[2]/a")
cloud_elements = page.xpath("//td[5]/a")



array = []
array2 = []


cloud_elements2.each do |cloud_element2|

	array2 << cloud_element2.text
end



cloud_elements.each do |cloud_element|

	array << cloud_element.text
end
h = array.zip(array2).to_h 
puts h

end

get_all_the_urls_of_val_doise_townhalls