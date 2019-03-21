class Api::ProfilesController < ApplicationController
  def index
    console = "psn"
    username = "x-pletive"
    if params[:console]
      console = params[:console]
    end
    if params[:username]
      username = params[:username]
    end
    url = "https://api.fortnitetracker.com/v1/profile/#{console}/#{username}"

    headers = {
         "TRN-Api-Key": "#{ENV["API_KEY"]}"
    }

    response = HTTP.get(url, headers: headers)

    render json: response.parse
  end
end
