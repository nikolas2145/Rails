require 'rails_helper'

RSpec.describe Project, type: :model do
 context 'Validate Projects' do
    let(:project) {build(:random_project)}
    it { should have_many(:tasks) }
    it 'Without Title' do

    project.title = nil
    #project = Project.new(position: 9999, uid: 9999).save
    expect(project.save).to eq(false)
    end
    it 'Without Position' do
    project.position = nil
    #project = Project.new(title: "test", uid: 9999).save
    expect(project.save).to eq(false)
    end
    it 'Without uid' do
    project.uid = nil
    #project = Project.new(position: 9999, title: "test").save
    expect(project.save).to eq(false)
    end
    it 'Sould save' do
    #project = Project.new(position: 9999, title: "test", uid: "99999").save
    expect(project.save).to eq(true)
    end

  end
end

