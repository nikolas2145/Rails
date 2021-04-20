class AddUnderTasksToTags < ActiveRecord::Migration[6.1]
  def change
    add_column :tags, :under_tasks, :integer, array:true, default: []
  end
end
