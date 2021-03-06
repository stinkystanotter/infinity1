class WelcomeController < ApplicationController
  
  require 'open-uri'
  require 'xmlsimple'
  
  def uri1
    "http://api.sportsdatallc.org/mlb-t4/glossary/glossary.xml?api_key=9rhgqxgccpux4unqthmwhrhr"
  end
  
  def my_uri(uri_name)
    b = "http://api.sportsdatallc.org/mlb-t4/"
    k = "9rhgqxgccpux4unqthmwhrhr"
    case uri_name
    when "glossary"
      b = b + "glossary/glossary.xml?api_key=" + k
    when "player seasonal stats"
      b = b + "seasontd/players/2013.xml?api_key=" + k
    end
    
  end
  
  def base
    "http://api.sportsdatallc.org/mlb-t4/"
    def glossary
      "glossary/glossary.xml?api_key=9rhgqxgccpux4unqthmwhrhr"
    end
  end
  
  def index
    @players = Player.all
    @players_vd_13 = Player.where(is_vd_2k13_starter: true).order(id: :asc)    
    @players_otter_13 = Player.where(is_otter_2k13_starter: true).order(id: :asc)
    #@uri1 = uri1
    @uri2 = my_uri("player seasonal stats")
    #@file = open(uri1)
    @file2 = open(@uri2)
    #@data = Nokogiri::XML(@file)
    @data2 = XmlSimple.xml_in(@file2, { 'KeyAttr' => 'id' })
    #@base = base
  end
  
  def make_a_guy
    @guy = Player.new
  end
  
  def created
    @guys = Player.all
  end
  
  
  
end
