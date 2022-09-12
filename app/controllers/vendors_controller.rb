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

    post "/vendors" do 
        cuisine = Cuisine.find_or_create_by(name: params[:cuisine_name])
        vendor = cuisine.vendors.build(
            name: params[:name],
            booth_number: params[:booth_number],
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
            comment: params[:comment] 
        )
        vendor.to_json(:include => :cuisine)
    end



    delete "/vendors/:id" do
        vendor = Vendor.find(params[:id])
        vendor.destroy
        vendor.to_json
    end


end
