class CreateVendor < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :booth_number
      t.integer :cuisine_id # this is the foreign key
      t.text :comment
      t.timestamps # created_at and updated_at
    end
  end
end

