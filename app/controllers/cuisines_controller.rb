class CuisinesController < ApplicationController

    get "/cuisines" do
        { message: "Here are all cuisines!" }.to_json
      end
    
    get "/cuisines/:id" do
        cuisine = Cuisine.find(params[:id])
    end
      
end