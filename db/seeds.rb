require "./lib/tools/"
require "xml" #i may or may not need this

File.open("lib/data/champions.txt", "r").each do |folder_name| #read each champion individually and do this to each one
	folder_name = folder_name.strip #strips the individual champions of useless text including a ton of /n /br's
	raw_xml = File.read("lib/data/#{folder_name}/champion.xml") #reads the champion file inside of it's folder which is named after the name of each champion that has been grabbed from the textfile
end

source = XML::Parser.string(raw_xml)
content = source.parse

champions = content.root.find('./champion')

champions.each do |champion|
	title = champion.find_first('name').content
end

#this is sort of the runner. I define tools (defs) in data/tools