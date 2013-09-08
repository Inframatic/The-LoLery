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

    	)

    	champion['abilities'].each do |ability|
    		@champion.abilities.create(
    			name: ability['name']
    		)
    	end
    end
  end
end

#
    t.integer  "lol_id"
    t.string   "name"
    t.string   "display_name"
    t.string   "title"
    t.text     "description"
    t.text     "quote"
    t.string   "quote_author"
    t.float    "range"
    t.float    "move_speed"
    t.float    "armor_base"
    t.float    "armor_level"
    t.float    "mana_base"
    t.float    "mana_level"
    t.float    "critical_chance_base"
    t.float    "critical_chance_level"
    t.float    "mana_regen_base"
    t.float    "mana_regen_level"
    t.float    "health_regen_base"
    t.float    "health_regen_level"
    t.float    "magic_resist_base"
    t.float    "magic_resist_level"
    t.float    "health_base"
    t.float    "health_level"
    t.float    "attack_base"
    t.float    "attack_level"
    t.float    "rating_defense"
    t.float    "rating_magic"
    t.float    "rating_difficulty"
    t.float    "rating_attack"
    t.datetime "created_at"
    t.datetime "updated_at"