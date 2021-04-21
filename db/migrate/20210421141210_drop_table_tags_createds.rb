class DropTableTagsCreateds < ActiveRecord::Migration[6.1]
  def change
    drop_table(:tags_createds)
  end
end
