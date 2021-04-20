class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy
  has_many :tags, through: :tasks, dependent: :destroy
  #Validation
  validates :title, presence: true
  validates :position, presence: true

  def self.search(search)
    if search
      where(["title LIKE?", "%#{search}%"])
    else
      all
    end
  end
end
