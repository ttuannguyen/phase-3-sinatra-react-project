require 'pry'

class VendorsController < ApplicationController

    get "/vendors" do
        vendors = Vendor.all
        vendors.to_json
    end

    # get "/vendors/:id" do
    #     vendor = Vendor.find(params[:id]) 
    #     vendor.to_json
    # end

    post "/vendors" do 
        # create a new review in the database
        # params is a hash of key-value pairs coming from the body of the request
        vendor = Vendor.create(
            name: params[:name],
            booth_number: params[:booth_number],
            cuisine_id: params[:cuisine_id],
            comment: params[:comment] 
        ) 
        # send back a response with the created review as JSON
        vendor.to_json
    end
    # collection.create for associated objects

    patch "/vendors/:id" do
    end

    delete "/vendors/:id" do
    end

    #find the cuisine id and make the collection using the collection method


end
