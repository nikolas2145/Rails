class AddAttachmentToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :attachment, :string
  end
end
