class Remove < ActiveRecord::Migration[6.1]
  def change
    remove_column :tasks, :taks_id
    remove_column :tags, :taks_id

  end
end
