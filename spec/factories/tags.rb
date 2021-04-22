FactoryBot.define do
  factory :tag do
    title { "Test" }
    uid { 9999 }
    task_id { 99 }
    created_at { Time.now }
    updated_at { Time.now }




  end

  factory :random_tag, class: Tag do
    title { Faker::Game.title }
    uid {Faker::Number.number(digits: 5)}
    task_id { 99 }
    created_at { Time.now }
    updated_at { Time.now }
    id { 99 }
  end


end
