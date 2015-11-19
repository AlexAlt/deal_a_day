require 'rails_helper'

describe Purchase do
  it { should belong_to :file_upload }

  describe "#import" do
    let(:data) { 
      "purchaser name,item description,item price,purchase count,merchant address,merchant name\r" +
      "Snake Plissken,$10 off $20 of food,10.0,2,987 Fake St,Bob's Pizza\r" +
      "Amy Pond,$30 of awesome for $10,10.0,5,456 Unreal Rd,Tom's Awesome Shop\r" +
      "Marty McFly,$20 Sneakers for $5,5.0,1,123 Fake St,Sneaker Store Emporium\r "+
      "Snake Plissken,$20 Sneakers for $5,5.0,4,123 Fake St,Sneaker Store Emporium\r"
      }

    it 'creates new Purchases from an imported CSV file' do
      file_upload = FileUpload.create!
      allow(File).to receive(:open).and_return(StringIO.new(data)) 
      Purchase.import("filename", file_upload)
      expect(file_upload.purchases.length).to eq(4)
    end
  end
end