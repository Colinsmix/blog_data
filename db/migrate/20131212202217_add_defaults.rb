class AddDefaults < ActiveRecord::Migration
  def up
    change_column :comments, :written_by, :string, default: "Anonymous"
  end

  def down
    change_column :comments, :written_by, :string
  end
end
