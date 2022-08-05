class CreateCuisine < ActiveRecord::Migration[6.1]
  def change
    create_table :cuisines do |t|
      t.string :name
      t.timestamps #created_at and updated_at
    end
  end
end
