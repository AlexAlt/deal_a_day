module PurchasesHelper
  def total_purchase_revenue(purchases)
    total_revenue = 0.0
    purchases.each do |purchase|
      total_revenue += purchase.purchase_total
    end
    total_revenue
  end
end