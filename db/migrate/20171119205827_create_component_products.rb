class CreateComponentProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :component_products do |t|
      t.integer :qty
      t.references :component, foreign_key: true
      t.references :product, foreign_key: true

      t.timestamps
    end
  end
end
