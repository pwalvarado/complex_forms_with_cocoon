class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.decimal :amount
      t.belongs_to :recipe, index: true, foreign_key: true
      t.belongs_to :ingredient, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
