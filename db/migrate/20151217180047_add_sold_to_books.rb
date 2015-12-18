class AddSoldToBooks < ActiveRecord::Migration
  def change
    add_column :books, :sold, :integer
  end
end
