class CreateBlogEntries < ActiveRecord::Migration
  def change
    create_table :blog_entries do |t|
      t.integer :author_id, null: false
      t.integer :category_id, null: false
      t.string :title, null: false
      t.text :content, null: false

      t.timestamps
    end
  end
end
