require 'rails_helper'

RSpec.describe Tag, type: :model do
  context 'Validate Tag' do
    it { should belong_to(:task) }

    let(:tag) {build(:tag)}

    it 'Without Title' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      task = Task.new(title:"TestTask", id:99, is_done: false,uid: 9999, project_id: 99 ).save
      tag.title = nil
      #tag = Tag.new(uid: 1, task_id: 1).save
      expect(tag.save).to eq(false)
    end
    it 'Without uid' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      task = Task.new(title:"TestTask", id:99, is_done: false,uid: 9999, project_id: 99 ).save
      tag.uid = nil
      #tag = Tag.new(title: "test", task_id: 1).save
      expect(tag.save).to eq(false)
    end
    it 'Without Task ID' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      task = Task.new(title:"TestTask", id:99, is_done: false,uid: 9999, project_id: 99 ).save
      tag.task_id = nil
      #tag = Tag.new(uid: 1, title: "test").save
      expect(tag.save).to eq(false)
    end
    it 'Should save' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      task = Task.new(title:"TestTask", id:99, is_done: false,uid: 9999, project_id: 99 ).save

      #tag = Tag.new(title: "test", task_id: 1, uid: 1).save
      expect(tag.save).to eq(true)
    end
  end
end
