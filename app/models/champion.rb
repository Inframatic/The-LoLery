class Champion < ActiveRecord::Base
	has_many :abilties
	has_many :tips
	has_many :champion_tags
	has_many :tags, through: :champion_tags

	def self.build_from_xml
    xml = Nokogiri::XML(open("app/assets/xml/champion_list.xml"))
    xml.search('Champion').each do |champion|
    	@champion = Champion.create!(
    		lol_id: champion['id'],
    		name: champion['name'],
    		display_name: champion['displayName'],
    		title: champion['title'],
    		icon_path: champion['iconPath'],
    		portrait_path: champion['portraitPath'],
    		description: champion['description'],
    		quote: champion['quote'],
    		quote_author: champion['quoteAuthor'],
    		range: champion['range'],
    		move_speed: champion['moveSpeed'],
    		armor_base: champion['armorBase'],
    		armor_level: champion['armorLevel'],
    		mana_base: champion['manaBase'],
    		mana_level: champion['manaLevel'],
    		critical_chance_base: champion['criticalChanceBase'],
    		critical_chance_level: champion['criticalChanceLevel'],
    		mana_regen_base: champion['manaRegenBase'],
    		mana_regen_level: champion['manaRegenLevel'],
    		health_regen_base: champion['healthRegenBase'],
    		health_regen_level: champion['healthRegenLevel'],
    		magic_resist_base: champion['magicResistBase'],
    		magic_resist_level: champion['magicResistLevel'],
    		health_base: champion['healthBase'],
    		health_level: champion['healthLevel'],
    		attack_base: champion['attackBase'],
    		attack_level: champion['attackLevel'],
    		rating_defense: champion['ratingDefense'],
    		rating_magic: champion['ratingMagic'],
    		rating_difficulty: champion['ratingDifficulty'],
    		rating_attack: champion['ratingAttack']
    	)

    	champion['abilities'].each do |ability|
    		@champion.abilities.create(
    			rank: ability['rank'],
    			name: ability['name'],
    			range: ability['range'],
    			description: ability['description'],
    		)
    	end
    end
  end
end