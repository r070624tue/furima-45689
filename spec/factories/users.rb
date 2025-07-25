FactoryBot.define do
  factory :user do
    nickname {Faker::Name.name}
    email {Faker::Internet.email}
    password {Faker::Internet.password(min_length: 6)}
    password_confirmation {password}
    last_name {'佐藤'}
    first_name {'次郎'}
    last_name_kana {'サトウ'}
    first_name_kana {'ジロウ'}
    birth_date {Date.new(1969, 5, 7)}
  end
end