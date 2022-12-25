class ShippingCharge < ActiveHash::Base
  self.data = [
    { id: 0, shipping_charge: '---' },
    { id: 1, shipping_charge: '着払い(購入者負担)' },
    { id: 2, shipping_charge: '送料込み(出品者負担)' }
  ]
  include ActiveHash::Associations
  has_many :items
end