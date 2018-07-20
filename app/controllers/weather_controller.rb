require 'rubygems'
require 'json'
require 'open-uri'
# require 'uri'
# require 'net/http'
# require 'httparty'
class WeatherController < ApplicationController
	# include HTTParty
	def new
	    weather_api_key = 'APPID=' + 'e55d4518e54d0f7c20a8294f740e713e'
	    weather_api_url = 'http://api.openweathermap.org/data/2.5/forecast?id=524901'
	    request_url = weather_api_url + weather_api_key
	    # @weather = get_request(request_user)
	    # @response = JSON.parse(@weather)

	    url = "http://api.openweathermap.org/data/2.5/forecast?id=1733046&APPID=e55d4518e54d0f7c20a8294f740e713e"

	    # http = Net::HTTP.new(url.host, url.port)
	    # http.use_ssl = true
	    # http.verify_mode = OpenSSL::SSL::VERIFY_NONE

	    # request = Net::HTTP::Get.new(url)
	    # request["cache-control"] = 'no-cache'

	    # response = http.request(request)
	    # puts response.read_body

	    testing = open(url).read
	    @test = JSON.parse(testing)
	    # weather = Weather.new(body: @test)
	    # weather.save
	    @test_list = @test['list']
	    # @test_main = @test_list[:main]
	end
end
