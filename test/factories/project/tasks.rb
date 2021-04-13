FactoryBot.define do
  factory :project_task, class: 'Project::Task' do
    title { "MyString" }
    description { "MyText" }
    is_done { false }
    project { nil }
  end
end
