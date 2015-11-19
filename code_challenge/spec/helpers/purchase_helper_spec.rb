require 'rails_helper'


describe PurchasesHelper do
  it "should get the total revenue of an upload" do
    purchases = [Purchase.create(
      {:purchase_count => "3", :item_price => 25.0}),
      Purchase.create({:purchase_count => "3", :item_price => 25.0})
    ]
    expect(total_purchase_revenue(purchases)).to eq(150)
  end

end
