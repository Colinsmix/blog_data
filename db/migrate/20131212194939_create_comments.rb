class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :blog_entry_id, null: false
      t.text :comment, null: false
      t.string :written_by, null: false

      t.timestamps
    end
  end
end
