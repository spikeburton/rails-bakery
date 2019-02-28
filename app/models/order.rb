class Order < ApplicationRecord
  belongs_to :user
  belongs_to :cake

  def order_date_str
    self.order_date.strftime("%B %e, %Y at %l:%M %P")
  end

  def fulfilled_str
    self.fulfilled ? "Yes" : "No"
  end
end
