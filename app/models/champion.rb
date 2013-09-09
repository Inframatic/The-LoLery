class Champion < ActiveRecord::Base
	has_many :abilties
	has_many :tips
	has_many :champion_tags
	has_many :tags, through: :champion_tags

	def self.build_from_xml
        xml = Nokogiri::XML(open("app/assets/xml/champion_list.xml"))
        xml.search('Champion').each do |champion|
        	@champion = Champion.create!(
        		lol_id: champion.children[1].children.text,
        		name: champion.children[3].children.text,
        		display_name: champion.children[5].children.text,
        		title: champion.children[7].children.text,
        		description: champion.children[15].children.text,
        		quote: champion.children[17].children.text,
        		quote_author: champion.children[19].children.text,
        		range: champion.children[21].children.text,
        		move_speed: champion.children[23].children.text,
        		armor_base: champion.children[25].children.text,
        		armor_level: champion.children[27].children.text,
        		mana_base: champion.children[29].children.text,
        		mana_level: champion.children[31].children.text,
        		critical_chance_base: champion.children[33].children.text,
        		critical_chance_level: champion.children[35].children.text,
        		mana_regen_base: champion.children[37].children.text,
        		mana_regen_level: champion.children[39].children.text,
        		health_regen_base: champion.children[41].children.text,
        		health_regen_level: champion.children[43].children.text,
        		magic_resist_base: champion.children[45].children.text,
        		magic_resist_level: champion.children[47].children.text,
        		health_base: champion.children[49].children.text,
        		health_level: champion.children[51].children.text,
        		attack_base: champion.children[53].children.text,
        		attack_level: champion.children[55].children.text,
        		rating_defense: champion.children[57].children.text,
        		rating_magic: champion.children[59].children.text,
        		rating_difficulty: champion.children[61].children.text,
        		rating_attack: champion.children[63].children.text
            )
        end
    end
end