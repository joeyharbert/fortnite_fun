class Api::ProfilesController < ApplicationController
  def index

    url = "https://api.fortnitetracker.com/v1/profile/psn/x-pletive"

    headers = {
         "TRN-Api-Key": "#{ENV["API_KEY"]}"
    }

    response = HTTP.get(url, headers: headers)

    render json: response.parse
  end
end
