require 'http'
require 'active_support'
require 'uri'

class WeatherController < ApplicationController
    def index
        @city = params[:city]
        url = "https://api.openweathermap.org/data/2.5/weather?q=#{@city}&appid=&units=metric"

        response = HTTP.get("https://api.openweathermap.org/data/2.5/weather", 
                :params => {
                    :q => @city, 
                    :units => "metric",
                    :appid => "d8d6ac9336f9c943179b04e4187a6b30"
                })

        @current_datetime = Time.now.strftime("%d/%m/%Y %H:%M")
        @weather_data = response.parse
    end
end
