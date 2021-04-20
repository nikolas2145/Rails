class Tag < ApplicationRecord
  belongs_to :task
  #Validation
  validates :title, presence: true

  def self.search(search)
    if search
      where(["title LIKE?", "%#{search}%"])
    else
      all
    end
  end
end
