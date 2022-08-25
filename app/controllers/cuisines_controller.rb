class CuisinesController < ApplicationController

    get "/cuisines" do
        { message: "Here are all cuisines!" }.to_json
        cuisines = Cuisine.all
        cuisines.to_json(include: [vendors: {only: [:id, :name]}], except: [:created_at, :updated_at])
    end

    get "/cuisines/:id" do
        cuisine = Cuisine.find(params[:id]) 
        cuisine.to_json(:include => :vendors)
    end

    # need a post request 


      
end