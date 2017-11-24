class CreateGlobalMsrps < ActiveRecord::Migration[5.0]
  def change
    create_table :global_msrps do |t|
      t.float :price

      t.timestamps
    end

    GlobalMsrp.create!(price: 0.00)
  end
end
