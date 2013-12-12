class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :type, null: false

      t.timestampsrails
    end
  end
end
