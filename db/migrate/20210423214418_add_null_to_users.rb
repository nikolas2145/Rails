class AddNullToUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :name, :string, nil: false
    change_column :users, :last_name, :string, nil: false
  end
end
