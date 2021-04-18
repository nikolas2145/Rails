class AddTaskIdToTags < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :task_id, :integer
  end
end
