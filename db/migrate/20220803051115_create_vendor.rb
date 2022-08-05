class CreateItem < ActiveRecord::Migration[6.1]
  def change
    create_table :vendors do |t|
      t.string :name
      t.integer :booth_number
      t.string :payment_method
      t.boolean :vegan_option
      t.timestamps #created_at and updated_at
    end
  end
end
