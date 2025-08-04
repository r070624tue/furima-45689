FactoryBot.define do
  factory :order_address do
    token {"tok_abcdefghijk00000000000000000"}
    postal_code {'123-4567'}
    prefecture_id {13}
    city {'渋谷区'}
    addresses {'道玄坂1-2-3'}
    building {'ABCビル101'}
    phone_number {'09012345678'}
    association :user
    association :item
  end
end
