class Purchase < ActiveRecord::Base
  belongs_to :file_upload

  def purchase_total
    count = self.purchase_count
    price = self.item_price
    count * price
  end

  def self.import(file_path, file_upload)
    CSV.foreach(file_path, headers: true) do |row|
      rh = row.to_hash
      purchase_hash = {}
      rh.each do |key, value|
        key = key.sub(" ","_")
        purchase_hash.store(key, value)
      end
      file_upload.purchases.create! purchase_hash
    end
  end
end