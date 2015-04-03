class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.decimal :amount
      t.belongs_to :recipe
      t.belongs_to :ingredient

      t.timestamps
    end
    add_index :quantities, :recipe_id
    add_index :quantities, :ingredient_id
  end
end
