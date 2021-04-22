FactoryBot.define do
  factory :project do
    title { "Test" }
    position { 999 }
    uid { 999 }

  end

  factory :random_project, class: Project do
    title { Faker::Game.title }
    position {Faker::Number.number(digits: 5)}
    uid {Faker::Number.number(digits: 5)}

  end


end
