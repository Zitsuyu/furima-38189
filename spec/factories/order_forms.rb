FactoryBot.define do
  factory :order_form do
    token         { Faker::Internet.password(min_length: 20, max_length: 30) }
    user_id       { '1' }
    item_id       { '1' }
    postcode      { '111-1111' }
    prefecture_id { '2' }
    city          { '盛岡市' }
    block         { '高松' }
    building      { 'マンション高松' }
    phone_number  { '11111111111' }
  end
end
