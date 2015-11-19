require 'rails_helper'

describe Purchase do
  it { should belong_to :file_upload }

  describe "#import" do

    it 'creates new Purchases from an imported CSV file' do
      file = (Rails.root.join("spec/fixtures/csv/test_example_data.csv"))
      file_upload = FileUpload.create!
      Purchase.import(file, file_upload)
      expect(file_upload.purchases.length).to eq(4)
    end
  end
end