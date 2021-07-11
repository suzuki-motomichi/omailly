class SearchController < ApplicationController
  require 'wikipedia'
  require 'nokogiri'
  # def search
  #   if postal_code = params[:postal_code]
  #     params = URI.encode_www_form({zipcode: postal_code})
  #     uri = URI.parse("http://zipcloud.ibsnet.co.jp/api/search?#{params}")
  #     response = Net::HTTP.get_response(uri)
  #     result = JSON.parse(response.body)
  #     if result["results"]
  #       @zipcode = result["results"][0]["zipcode"]
  #       @address1 = result["results"][0]["address1"]
  #       @address2 = result["results"][0]["address2"]
  #       @address3 = result["results"][0]["address3"]
  #     end
  #   end
  # end

  # def search
  #   if postal_code = params[:wiki_name]
  #     params = URI.encode_www_form({zipcode: postal_code})
  #     uri = URI.parse("https://ja.wikipedia.org/w/api.php?format=xml&action=query&prop=info&titles=#{params}")
  #     response = Net::HTTP.get_response(uri)
  #     doc = XML.parse(response.body)
  #     if doc["results"]
  #       @title = doc["results"][0]["zipcode"]
  #       @address1 = doc["results"][0]["address1"]
  #       @address2 = doc["results"][0]["address2"]
  #       @address3 = doc["results"][0]["address3"]
  #     end
  #   end
  # end

  # def page
  #   page = Wikipedia.find('GRAPEVINE')
  #   page.title
  #   page.content
  #   p page.title
  # end

  def search
      @results = Wikipedia.find(params[:keyword])
  end

end
