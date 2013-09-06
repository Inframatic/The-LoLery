class ChampionsController < ApplicationController
	  def index
      require 'nokogiri'
      doc = Nokogiri::XML(open("http://sports.yahoo.com/top/rss.xml"))

      @links = doc.xpath('//item').map do |i|
      {'title' => i.xpath('title'), 'link' => i.xpath('link'), 'description' => i.xpath('description')}
      end
  end
end
