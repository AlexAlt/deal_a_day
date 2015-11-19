class CreatePurchasesTable < ActiveRecord::Migration
  def change
    create_table :purchases do |t|
      t.string :purchaser_name
      t.string :item_description
      t.decimal :item_price, :precision => 5, :scale => 2
      t.string :purchase_count
      t.string :merchant_address
      t.string :merchant_name
      t.integer :file_upload_id

      t.timestamps
    end
  end
end
