FactoryBot.define do
  factory :user do
    name { "John" }
    last_name  { "Doe" }
    email { "testemail@test.com" }
    id { 5 }
    password {Faker::Internet.password}
  end

  factory :random_user, class: User do
    name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    email { Faker::Internet.safe_email }
    id { Faker::Number.number(digits: 5) }
    password { Faker::Internet.password }

  end


end
