class Addcoulmntozokan < ActiveRecord::Migration[5.2]
  def change
    add_column :zokans, :zokan, :integer
  end
end
