require 'open-uri'
require 'nokogiri'
require 'json'
require 'csv'


class HomeController < ApplicationController
  def index
    page = Nokogiri::HTML(open(Rails.root + "app/views/home/index.html"))

    @id = page.css("a").map {|element| element["data-hovercard"][/id=([^&]*)/].gsub('id=', '')}     

  end
end
