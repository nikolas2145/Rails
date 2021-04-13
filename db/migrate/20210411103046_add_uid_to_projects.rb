class AddUidToProjects < ActiveRecord::Migration[6.1]
  def change
    add_column :projects, :uid, :integer
  end
end
