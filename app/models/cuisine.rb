class Cuisine < ActiveRecord::Base
    has_many :vendors
end