class Task < ApplicationRecord
  belongs_to :project


    attribute :is_done, :boolean, default: false


end
