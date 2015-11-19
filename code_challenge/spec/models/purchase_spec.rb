require 'rails_helper'

describe Purchase do
  it { should belong_to :file_upload }

  describe "#import" do
    it 'creates new Purchases from an imported CSV file' do
      file_path = (Rails.root.join("spec/fixtures/csv/test_example_data.csv"))
      file_upload = FileUpload.create!
      Purchase.import(file_path, file_upload)
      expect(file_upload.purchases.length).to eq(4)
    end
  end

  describe ".purchase_total" do
    it 'gets the total revenue from an individual purchase' do
      new_purchase = Purchase.new({:purchase_count => 3, :item_price => 25.0})
      expect(new_purchase.purchase_total).to eq(75)
    end
  end
end