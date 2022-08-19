class CuisinesController < ApplicationController

    get "/cuisines" do
        { message: "Here are all cuisines!" }.to_json
        cuisines = Cuisine.all
        cuisines.to_json(include: [vendors: {only: [:id, :name]}], except: [:created_at, :updated_at])
    end

    # need a post request 


      
end