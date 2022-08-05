class CreateIngredient < ActiveRecord::Migration[6.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.timestamps #created_at and updated_at
    end
  ends
end
