class ChangeMsrpColumnToLocalMsrp < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :msrp, :local_msrp
  end
end
