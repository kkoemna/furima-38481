class DaysToShip < ActiveHash::Base
  self.data = [
    { id: 0, days_to_ship: '---' },
    { id: 1, days_to_ship: '1~2日で発送' },
    { id: 2, days_to_ship: '2~3日で発送' },
    { id: 3, days_to_ship: '4~7日で発送' }
  ]
  include ActiveHash::Associations
  has_many :items
end