class CuisinesController < ApplicationController

    get "/cuisines" do
        { message: "Here are all cuisines!" }.to_json
    end

    # need a post request 
      
end