class OrderForm
  include ActiveModel::Model

  attr_accessor :token, :user_id, :item_id, :postcode, :prefecture_id, :city, :block, :building, :phone_number
  
  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :token, presence: true

  validates :postcode, presence: true, format: { with: /\A[0-9]{3}-[0-9]{4}\z/ }
  validates :prefecture_id, presence: true, numericality: { other_than: 1, message: "can't be blank" }
  validates :city, presence: true
  validates :block, presence: true
  validates :phone_number, presence: true, format: { with: /\A[0-9]{10,11}\z/ }

  def save
    order = Order.create(user_id: user_id, item_id: item_id)
    Payment.create(order_id: order.id, postcode: postcode, prefecture_id: prefecture_id, city: city, block: block, building: building, phone_number: phone_number)
  end
end