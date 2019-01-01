class AddTagToShugoshins < ActiveRecord::Migration[5.2]
  def change
    add_column :shugoshins, :kan_d, :integer
  end
end
