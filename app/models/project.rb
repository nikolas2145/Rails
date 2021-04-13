class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy


  def self.search(search)
    if search
      where(["title LIKE?","%#{search}%"])
    else
      all
    end
  end
end
