class Task < ApplicationRecord
  #has_many :tags

  belongs_to :project
  has_many :tags, dependent: :destroy



    attribute :is_done, :boolean, default: false
  scope :comp_tasks, -> {where(:is_done => true)}
  scope :uncomp_tasks, -> {where(:is_done => false)}

  def self.search(search)
    if search
      where(["title LIKE?", "%#{search}%"])
    else
      all
    end
  end


end
