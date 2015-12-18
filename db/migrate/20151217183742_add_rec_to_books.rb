class AddRecToBooks < ActiveRecord::Migration
  def change
    add_column :books, :rec, :boolean
  end
end
