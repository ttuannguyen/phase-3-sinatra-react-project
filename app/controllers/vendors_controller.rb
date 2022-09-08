require 'pry'

class VendorsController < ApplicationController

    get "/vendors" do
        vendors = Vendor.all
        vendors.to_json(:include => :cuisine)
    end

    get "/vendors/:id" do
        vendor = Vendor.find(params[:id]) 
        vendor.to_json(:include => :cuisine)
    end

    # post "/vendors" do 
    #     # create a new vendor in the database
    #     # params is a hash of key-value pairs coming from the body of the request
    #     vendor = Vendor.create(
    #         name: params[:name],
    #         booth_number: params[:booth_number],
    #         cuisine_id: params[:cuisine_id],
    #         comment: params[:comment] 
    #     ) 
    #     # send back a response with the created vendor as JSON
    #     vendor.to_json(:include => :cuisine)
    # end

    post "/vendors" do 
        cuisine = Cuisine.find_or_create_by(name: params[:cuisine_name])
        vendor = Vendor.create(
            name: params[:name],
            booth_number: params[:booth_number],
            cuisine_id: cuisine.id,
            comment: params[:comment] 
        ) 
        if vendor.save
            vendor.to_json(:include => :cuisine)
        else 
            vendor.error.to_json
        end
    end

    patch "/vendors/:id" do
        vendor = Vendor.find(params[:id])
        vendor.update(
            name: params[:name],
            booth_number: params[:booth_number],
            cuisine_id: params[:cuisine_id],
            comment: params[:comment] 
        )
        # binding.pry
        vendor.to_json(:include => :cuisine)
    end



    delete "/vendors/:id" do
        vendor = Vendor.find(params[:id])
        vendor.destroy
        vendor.to_json
    end

    #find the cuisine id and make the collection using the collection method


end
