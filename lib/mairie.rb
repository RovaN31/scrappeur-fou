require 'nokogiri'
require 'open-uri'
require 'pry'
require 'json'

def mairie
   data = [{}]
	def get_townhall_email(townhall_url)
		townhall_email = []
		
    	email = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/ableiges.html"))
    	email.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').each do |node|
    	townhall_email << node.text
     
    	end
	end
	

	print townhall_email

	def get_townhall_urls
		townhall_urls = []
		urls = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
		urls.xpath('/html/body/table/tbody/tr[3]/td/table/tbody/tr/td[2]/p[2]/object/table/tbody/tr[2]/td/table/tbody/tr').find{ |node| node.attributes["href"].value}

	end

	print townhall_urls

end

data = [{townhall => townhall_email}]
JSON.open('data.json') do |json|
	json << data
end
