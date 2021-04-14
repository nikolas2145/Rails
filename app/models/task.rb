class Task < ApplicationRecord
  belongs_to :project
  has_many :tags, dependent: :destroy


    attribute :is_done, :boolean, default: false
  scope :comp_tasks, -> {where(:is_done => true)}
  scope :uncomp_tasks, -> {where(:is_done => false)}


end
