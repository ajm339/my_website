class AddNameToComment < ActiveRecord::Migration
  def change
    add_column :comments, :name, :text
  end
end
