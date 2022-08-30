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
    post "/cuisines" do 
        # create a new review in the database
        # params is a hash of key-value pairs coming from the body of the request
        cuisine = Cuisine.create(
            name: params[:name]
        ) 
        # send back a response with the created review as JSON
        cuisine.to_json(:include => :vendors)
    end

      
end