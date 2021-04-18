class CreateTags < ActiveRecord::Migration[6.1]
  def change
    create_table :tags do |t|
      t.references :task, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
