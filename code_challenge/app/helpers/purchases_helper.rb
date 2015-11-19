module PurchasesHelper
  def total_purchase_revenue(purchases)
    total_revenue = 0.0
    purchases.each do |purchase|
      sub_total = purchase.purchase_total
      total_revenue += sub_total
    end
    total_revenue
  end
end