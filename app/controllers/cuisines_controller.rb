class CuisinesController < ApplicationController

    get "/cuisines" do
        { message: "To return all cuisines!" }.to_json
      end
    
    get "/cuisines/:id" do
    cuisine = Cuisine.find(params[:id])
    end
      
end