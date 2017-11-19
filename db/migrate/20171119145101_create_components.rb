class CreateComponents < ActiveRecord::Migration[5.0]
  def change
    create_table :components do |t|
      t.references :manufacturer, foreign_key: true
      t.string :name
      t.float :height_in
      t.float :width_in
      t.string :image_url
      t.string :purchase_url

      t.timestamps
    end
  end
end
