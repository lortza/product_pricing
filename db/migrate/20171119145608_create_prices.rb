class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.references :component, foreign_key: true
      t.integer :qty
      t.float :cost_each
      t.float :shipping_each

      t.timestamps
    end
  end
end
