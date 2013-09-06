require 'db/seeds.rb'

class Champion <ActiveRecord::Base
	
	def self.find_all()
		champions = []
		
		File.open("lib/data/champions.txt", "r").each do |folder_name| #read each champion individually and do this to each one
			folder_name = folder_name.strip #strips the individual champions of useless text including a ton of /n /br's
			raw_xml = File.read("lib/data/#{folder_name}/champion.xml") #reads the champion file inside of it's folder which is named after the name of each champion that has been grabbed from the textfile
			source = XML::Parser.string(raw_xml)
			content = source.parse
			raw_xml.each do |champ|	
				champions << Champion.new(
					champ.find('name').to_a.first.content
				)
			end
			champions
		end
	end
	
end