class Transaction < ApplicationRecord
  def self.ordered_by_created_at
    order(created_at: :asc)
  end
  def self.total_amount
    sum(:amount)
  end
  def self.sum_by_day
    select("date(created_at) as transaction_day, SUM(amount) as total_amount")
      .group("date(created_at)")
      .order("date(created_at)")
  end
end
