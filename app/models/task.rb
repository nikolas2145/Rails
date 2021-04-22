class Task < ApplicationRecord
  belongs_to :project
  has_many :tags, dependent: :destroy

  attribute :is_done, :boolean, default: false
  #validation
  validates :title, presence: true
  validates :uid, presence: true


  validates :project_id, presence: true

  scope :comp_tasks, -> {where(:is_done => true)}
  scope :uncomp_tasks, -> {where(:is_done => false)}

  def self.search(search)
    if search
      where(["title LIKE?", "%#{search}%"])
    else
      all
    end
  end
  mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.


end
