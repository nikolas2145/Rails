class AddUidToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :uid, :integer
  end
end
