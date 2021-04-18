class Tag < ApplicationRecord
  belongs_to :task

  def self.search(search)
    if search
      where(["title LIKE?", "%#{search}%"])
    else
      all
    end
  end
end
