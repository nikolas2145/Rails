FactoryBot.define do
  factory :task do
    title { "Test" }
    description {"Desc test"}
    is_done { false }
    project_id { 99 }
    attachment { 'test' }
    uid { 9999 }
    id { 99999 }
    created_at { Time.now }
    updated_at { Time.now }
  end

  factory :random_task, class: Task do
    title { Faker::Game.title }
    # description { Faker::Game.platform }
    is_done { Faker::Boolean.boolean }
    project_id { 99 }
    # attachment { Faker::String.random }
    uid { Faker::Number.number(digits: 5) }
    id { Faker::Number.number(digits: 5) }

  end


end
