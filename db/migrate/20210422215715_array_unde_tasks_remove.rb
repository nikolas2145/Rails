class ArrayUndeTasksRemove < ActiveRecord::Migration[6.1]
  def change
    remove_column :tags, :under_tasks
  end
end
