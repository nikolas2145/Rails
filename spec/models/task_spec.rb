require 'rails_helper'

RSpec.describe Task, type: :model do
  context 'Validate Tasks' do
    let(:task) { build(:random_task) }
    it { should belong_to(:project) }
    it { should have_many(:tags) }


    it 'Without Title' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      task.title = nil
      # task = Task.new(uid: 9999, project_id: 99999, description:'Test', attachment:'Test', is_done:false).save
      expect(task.save).to eq(false)
    end

    it 'Without uid' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      task.uid = nil
      #task = Task.new(title: "test", project_id: 99999, description:'Test', attachment:'Test', is_done:false).save
      expect(task.save).to eq(false)
    end
    it 'Without Project ID' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      task.project_id = nil

      #task = Task.new(uid: 9999, title: "test", description:'Test', attachment:'Test', is_done:false).save
      expect(task.save).to eq(false)
    end
    it 'Should save' do
      project = Project.new(title:"testing", position: 0, uid: 3, id: 99).save
      #task = Task.new(title: "test", project_id: 99, uid: 99999, description:'Test', attachment:'Test', is_done:false).save!
      expect(task.save).to eq(true )
      #expect(project.task.build(task)).to eq(true)

    end
  end

end
