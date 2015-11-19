require 'rails_helper'


describe PurchasesHelper do
  it "should calculate and return the total revenue of an upload" do
    purchases = [
      Purchase.create({:purchase_count => 3, :item_price => 25.0}),
      Purchase.create({:purchase_count => 2, :item_price => 32.0})
    ]
    expect(total_purchase_revenue(purchases)).to eq(139)
  end

end
